<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    img {
      max-width: 100%;
      height: auto;
    }
    .article-container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }
    .article-body {
    white-space: pre-wrap;
}
td{
  display: inline-block;
  
}

  </style>
</head>

<div class="article-container">
  <h1><?= h($article->title) ?></h1>
  <p><small>Created: <?= $article->created->format('Y-m-d H:i') ?></small></p>
  <table>
      <tr>

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
      </td>
      <td>
        <a href="http://localhost:4000/articles/edit/<?= $article->id ?>">
      <ion-icon name="create-outline"></ion-icon>
      </a>
      </td>

    </tr>

  </table>
  
  <div class="article-body"><?= h($article->body) ?></div>
  
  <?php  if($article->filename!= '' )
  {   
  ?>
  <div class="center"><?php echo $this->Html->image('uploads/users/' . $article->filename); ?></div>
  <?php  }  ?>
</div>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>