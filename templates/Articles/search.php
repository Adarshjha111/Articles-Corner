<style>
    .body-text {
    margin-bottom: 2em;
}

    .li_space{
        padding:0px;

    }

</style>
<h3>Titles containing keyword you searched:</h3>
<ul>
        <li>
            <?php
                $q = strtolower($q);   
                if (isset($facetCounts_title[$q])) {
                    echo $facetCounts_title[$q];
                } else {
                    echo "0";
                }
            ?>
        </li>
</ul>

<!-- Highlighting -->

    <div>
        <h4>
        <?php  if (!empty($highlighting->getResults())) { ?>
          <h3>Your Search Result :-</h3>
              <?php 
              foreach ($highlighting->getResults() as $id => $results) {
                  ?>
                  <?php
                  if(isset($results->getField('title')[0]))
                  {
                      $title = $results->getField('title')[0]; // getting the first highlighted value for the 'title' field
                      echo $this->Html->link(
                          $title,
                          ['action' => 'view', $id],
                          ['escape' => false]
                      ) . PHP_EOL;  
                  }
                  else{
                      echo $this->Html->link(
                          'Read Article',
                          ['action' => 'view', $id],
                          ['escape' => false]
                      ) . PHP_EOL;  
                      }
                  ?>
                    
                
                  <p class="body-text">
                      <?php
                          echo isset($results->getField('body')[0]) ? ($results->getField('body')[0]) : '';                        
                      ?>
      
                  
                  </p>

                  <?php 
                  /*

                    <p class="body-text">
                      <?php
                          $body = isset($results->getField('body')[0]) ? $results->getField('body')[0] : '';
                          $words = explode(' ', $body); //split it into an array of words
                          $shortened = implode(' ', array_slice($words, 0, 6)); //extract first six words and concatenate them back into a string 
                          echo $shortened . (count($words) > 6 ? '...' : '');
                      ?>
                      </p>
                  */
                    ?> 


                  <?php
                    }
                  
                  ?>
                <?php } 
                
                else{ ?>
               <h3>Sorry,No match found for your Search Result!</h3>
               <? }
                ?>
                
        </h4>
       
        <?php  ?>
    </div>

<!-- Clustering using solr and solarium -->
<?php if (!empty($clusters)) { ?>
  <h2>Blogs you may like!</h2>
<?php foreach ($clusters as $cluster): ?>
  <?php 
        ?>
    <h3><?php echo $cluster['labels'][0]; 
    ?> 
   </h3> 
    <ul>
        <?php foreach ($cluster['docs'] as $docId): ?>
            <li>
                <?php foreach ($articles_title as $articles):
               
                if($docId == $articles['id']){
                    echo $this->Html->link(
                        $articles['title'],
                        ['action' => 'view', $docId],
                        ['escape' => false]
                    ); 
                    
                }
               ?>
                    <?php endforeach; ?>

            </li>
        <?php endforeach; ?>
    </ul>
<?php endforeach; ?>
<?php }?>





