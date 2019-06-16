<?php
  namespace App\Models;

  use App\Config\PDOManager;

$articlesPerPages = 3;
$articlesTotalReq = $bdd->query('SELECT id FROM articles');
$articlesTotal = $articlesTotalReq->rowCount();
$pagesTotales = ceil($articlesTotal/$articlesPerPages);
if(isset($_GET['page']) AND !empty($_GET['page']) AND $_GET['page'] > 0 AND $_GET['page'] <= $pagesTotales) {
   $_GET['page'] = intval($_GET['page']);
   $pageCourante = $_GET['page'];
} else {
   $pageCourante = 1;
}
$depart = ($pageCourante-1)*$articlesPerPages;
?>
<html>
   <head>
      <title>Pager</title>
      <meta charset="utf-8">
   </head>
   <body>
      <?php
      $videos = $bdd->query('SELECT * FROM articles ORDER BY id DESC LIMIT '.$depart.','.$articlesPerPages);
      while($vid = $videos->fetch()) {
      ?>
      <b>N°<?php echo $vid['id']; ?> - <?php echo $vid['titre']; ?></b><br />
      <i><?php echo $vid['description']; ?></i>
      <br /><br />
      <?php
      }
      ?>
      <?php
      for($i=1;$i<=$pagesTotales;$i++) {
         if($i == $pageCourante) {
            echo $i.' ';
         } else {
            echo '<a href="index.php?page='.$i.'">'.$i.'</a> ';
         }
      }
      ?>
   </body>
</html>