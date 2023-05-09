<?php
    
    namespace App\Controller;
    require_once '/var/www/html/vendor/autoload.php';
    use App\Controller\AppController;
    use Solarium\Client;
    use Solarium\Core\Client\Adapter\Curl; 
    use Symfony\Component\EventDispatcher\EventDispatcher;
    use Cake\Core\Configure;#to store and retrieve application configuration data.

    class ArticlesController extends AppController
    {
        public function initialize(): void
        {
            parent::initialize();

            $this->loadComponent('Flash'); // Include the FlashComponent
        }

        public function index()
        {
            $session = $this->request->getSession();
            $email = $session->read('email');
            
            $this->set('articles', $this->Articles->find()->all());
            $this->set(compact('email'));
        }

        public function view($id)
        {
            $article = $this->Articles->get($id);
            $this->set(compact('article'));
        }

        public function add()
        {
            $article = $this->Articles->newEmptyEntity();
            if ($this->request->is('post')) {
            $article->category_id = ($this->request->getData('category_id'));
            $article->title = ($this->request->getData('title'));
            $article->body = ($this->request->getData('body'));

                
                $image = $this->request->getData('filename');
                if($image->getSize()!=null)
                {
                    $name = $image->getClientFilename();
                    $article->filename = $image->getClientFilename();
                    $folder = WWW_ROOT . 'img/uploads/users/' . $name;
                    $tmpName = $image->getStream()->getMetadata('uri');
                    if(!move_uploaded_file($tmpName,$folder))
                    {
                        //'image didnot moved to folder'
                         $this->Flash->error(__('Unable to add image of your article.'));
                    }
                }
                // Added: Set the user_id from the session.....Working
                $article->email = $this->Auth->user('email');
                if(!empty(trim($article->title)) and !empty(trim($article->body)) )
                { 
                    if ($this->Articles->save($article)) {
                        $this->Flash->success(__('Your article has been saved.'));
                        return $this->redirect(['action' => 'index']);
                    }
                }
                
                $this->Flash->error(__('Unable to add your article.'));
            }
            $this->set('article', $article);

            // Just added the categories list to be able to choose
            // one category for an article
            $categories = $this->Articles->Categories->find('treeList')->all();
            $this->set(compact('categories'));
        }

        public function edit($id = null)
        {
            $article = $this->Articles->get($id);
            if ($this->request->is(['post', 'put'])) {
                    $article->title = ($this->request->getData('title'));
                    $article->body = ($this->request->getData('body'));
                    $old_image = $article->filename;
                    $image = $this->request->getData('filename');
                    $name = $image->getClientFilename();
                    $new_filename = $image->getClientFilename();

                if($new_filename != '')
                {
                    $tmpName = $image->getStream()->getMetadata('uri');
                    $folder = WWW_ROOT . 'img/uploads/users/' . $name;
                    $article->filename = $image->getClientFilename();
                    if(!move_uploaded_file($tmpName,$folder))
                    {
                     //'image didnot moved to folder'
                     $this->Flash->error(__('Unable to add image of your article.'));
                    }                    
                }

                else{
                    $article->filename =$old_image;
                }


                if(!empty(trim($article->title)) and !empty(trim($article->body)) )
                { 
                    if ($this->Articles->save($article)) {
                        $this->Flash->success(__('Your article with title:" {0} "has been updated.',h($article->title)));
                        return $this->redirect(['action' => 'index']);
                    }
                }

                $this->Flash->error(__('Unable to update your article.'));
            }

            $this->set('article', $article);
        }

        public function delete($id)
        {
            $this->request->allowMethod(['post', 'delete']);

            $article = $this->Articles->get($id);
            
            $article->title;
            
            if ($this->Articles->delete($article)) {
                $this->Flash->success(__('The article with title: {0} has been deleted.', h($article->title)));
                return $this->redirect(['action' => 'index']);
            }
        }

        public function isAuthorized($user)
            {
            $action = $this->request->getParam('action');
            // The add and view actions are always allowed to logged in users.
            if (in_array($action, ['add','view','search'])) {
                return true;
            }
        
            // All other actions require a slug.
            $id = $this->request->getParam('pass.0');
            if (!$id) {
                return false;
            }
        
            // Check that the article belongs to the current user.
            $article = $this->Articles->findById($id)->first();
            return $article->email === $user['email'];
            }

         #solr
         public function search()
         {
             $q = $this->request->getData('q');
             $adapter = new Curl();//to make HTTP requests to the Solr
             $dispatcher = new EventDispatcher();// to handle events, $client expects this as 2nd argument although no other use in code
             $endpointConfig = Configure::read('Solr');
            
             $client = new Client($adapter, $dispatcher, 
                 $endpointConfig);

             #faceting
             $q = $q . '*';
             $query = $client->createSelect();//to creates a new select query instance
             $query->setQuery($q);
             
             $facetSet = $query->getFacetSet();// get the facet set object.
             $fieldFacet = $facetSet->createFacetField('title');
             $fieldFacet->setField('title');

             $fieldFacet_category_name = $facetSet->createFacetField('category_name');
             $fieldFacet_category_name->setField('category_name');
             $resultSet = $client->select($query);
            
             $facetCounts_title = $resultSet->getFacetSet()->getFacet('title')->getValues();
             $facetCounts_category_name = $resultSet->getFacetSet()->getFacet('category_name')->getValues();
             $this->set(compact( 'facetCounts_title', 'facetCounts_category_name','q'));
           
             # Set up highlighting
             $query->setQuery($q);
             $hl = $query->getHighlighting(); //get the highlighting component object
             $hl->setFields(['title', 'id','body']); // Fields to highlight
             // $hl->setSimplePrefix('<em>'); 
             // $hl->setSimplePostfix('</em>'); 
             $hl->setSimplePrefix('<span style="background-color: yellow;">'); // Prefix for highlighted text
             $hl->setSimplePostfix('</span>');// Postfix for highlighted text
             $resultset = $client->select($query);
             $this->set('results', $resultset->getDocuments());
             $this->set('highlighting', $resultset->getHighlighting());
             
             
             #clustering on categories - hardcoded
             #using the $resultset to obtain category name
             $facetSet_categories = $resultset->getFacetSet();
             $facetCounts_category_name = $resultSet->getFacetSet()->getFacet('category_name')->getValues();
             $this->set(compact( 'facetCounts_category_name','q'));

             #clustering
             $query = $client->createSelect();
             //$query->setQuery('*:*');
             $query->setRows(10);
             $query->setQuery($q);
             $query->setQueryDefaultField('title');
             // $query->setQueryDefaultField('title body'); // set df field to 'title body'
             // Set the request handler to use the Clustering Request Handler
             $query->setHandler('clustering');
             $query->addParam('clustering', 'true');// Setting the query type to clustering
             $query->addParam('clustering.engine', 'lingo');// Setting the clustering engine to use
             $query->addParam('clustering.numClusters', 5); // Setting the number of clusters to return
             $resultSet = $client->select($query);
             $response = $resultSet->getResponse();
             $body = $response->getBody();
             $data = json_decode($body, true);
             $clusters = $data['clusters'];// Get the clustering information from the data array
             if (!empty($clusters)) {
             $this->set(compact( 'clusters'));
             }
            
            #using ids available in above clusters to search for their title
             $ids = [];
             foreach ($clusters as $cluster) {
                 $ids = array_merge($ids, $cluster['docs']);
             }
             
             // Create a select query instance
             $select = $client->createSelect();

             // Set the fields to return
             $select->setFields(['id', 'title']);
             #finding title for clustering id's
             $articles = [];
             foreach ($ids as $id) {
                 // Create a new query for each id
                 $query = $client->createSelect();
                 $query->setQuery('id:' . $id); 
                 // Execute the query and get the first result
                 $result = $client->select($query);
                 $document = $result->getDocuments()[0]; 
                 // Get the title and add it to the articles array
                 $title = $document['title'];
                 $articles_title[] = ['id' => $id, 'title' => $title];
             }
             if (isset($articles_title)) {
                $this->set(compact('articles_title'));
            }
             
            }

            
           

// ...




    }
?>
