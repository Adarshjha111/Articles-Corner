<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>

        @media 
        only screen and (max-width: 760px),
        (min-device-width: 768px) and (max-device-width: 1024px)  {

            /* Force table to not be like tables anymore */
            table, thead, tbody, th, td, tr { 
                display: block; 
            }
            
            /* Hide table headers (but not display: none;, for accessibility) */
            thead tr { 
                position: absolute;
                top: -9999px;
                left: -9999px;
            }
            
            tr { border: 1px solid #ccc; }
            
            td { 
                /* Behave  like a "row" */
                border: none;
                border-bottom: 1px solid #eee; 
                position: relative;
                padding-left: 50%; 
            }
            
            td:before { 
                /* Now like a table header */
                position: absolute;
                /* Top/left values mimic padding */
                top: 6px;
                left: 6px;
                width: 45%; 
                padding-right: 10px; 
                white-space: nowrap;
            }
            
            /*
            Label the data
            */
            
            td:nth-of-type(2):before { content: "Created"; }
            td:nth-of-type(3):before { content: "Actions"; }
        }


    </style>


</head>


<h1>Blog articles</h1>

<span><?= $this->Html->link('Add Article', ['action' => 'add']) ?></span>       
<?= $this->Html->link(
                        '<ion-icon name="add-outline"></ion-icon>',
                        ['action' => 'add'],
                        [
                            'escapeTitle' => false,
                        ]
                    ) 
?>        
<table>
    <thead>
        <tr>
            
            <th>Title</th>
            <th>Image</th>
            <th>Created</th>
            <th>Actions</th>
        </tr>
    </thead>

    <!-- Here's where we loop through our $articles query object, printing out article info -->
    <?php 
        $this->loadHelper('Authentication.Identity');
    ?>
        <?php foreach ($articles as $article): ?>
            <tbody>
                <tr>
                    <td>
                        <?= $this->Html->link($article->title, ['action' => 'view', $article->id]) ?>
                        
                    </td>

                    <td>
                        <?php if ($article->filename != '') : ?>
                        <?= $this->Html->image('uploads/users/' . $article->filename, [
                            'height' => 40,
                            'width' => 40,
                            'class' => 'img-thumbnail'
                        ]) ?>
                    
                        <?php endif; ?>
                    </td>

                    <td>
                        <?= $article->created->format('Y-m-d H:i') ?>
                    </td>
                    <?php
                    
                        if($article->email === $email) 

                        {      
                    ?>
                    <td> 
                        <?= $this->Form->postLink(
                            '<ion-icon name="trash-outline"></ion-icon>',
                            ['action' => 'delete', $article->id],
                            [
                                'confirm' => "Are you sure you want to delete the article '{$article->title}'?",
                                'escapeTitle' => false,
                                'class' => 'delete-link'
                            ]
                            ) 
                        ?>
                        <a href="http://localhost:4000/articles/edit/<?= $article->id ?>">
                            <ion-icon name="create-outline"></ion-icon>
                        </a>
                    </td>
                    <?php  } 

                    else 
                        {

                    ?>
                            <td>
                                <a href="http://localhost:4000/articles/view/<?= $article->id ?>">
                                    <ion-icon name="eye-outline"></ion-icon>
                                </a>
                            </td>

                    <?php }  ?>

                </tr>
            </tbody>
        <?php endforeach; ?>

</table>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>