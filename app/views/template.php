<!DOCTYPE html>
<html lang="fr" >
  <head>
    <meta charset="utf-8">
    <meta name="description" content="Billet simple pour l'Alaska, le nouveau roman de Jean Forteroche, déjà disponible.">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="icon" href="img/book-mark.ico" />
    <script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
  <script>
  tinymce.init({
    selector: '#mytextarea'
  });
  </script>
    <title> <?= $title ?> </title>
  </head>
  <body>
    <div class="bloc_page">

    <!-- HEADER -->

    <header id="header">
      <div class="menuTitle">
        <h1></i> Billet simple pour l'Alaska</h1>
        <p>Un roman de Jean Forteroche</p>
      </div>
      <!-- Menu de navigation -->
      <ul class="menu">
        <li><a href="index.php"><i class="fas fa-home"></i> Accueil</a></li>
        <!-- Si pas de session affiche se sonnecter -->

        <?php if (empty($_SESSION)) { ?>
          <li><a href="index.php?action=login"><i class="fas fa-user-edit"></i> Se connecter</a></li>

        <!-- Sinon affiche l'utilisateur et le lien de deconnexion -->
        <?php } else { ?>
          <li><a href="index.php?action=login"><i class="fas fa-user-edit"></i> <?= $_SESSION['username']; ?></a></li>
          <li><a href="index.php?action=disconnect"><i class="fas fa-sign-out-alt"></i> Se déconnecter</a></li>
        <?php } ?>
      </ul>
    </header>


    <!-- SECTION PRINCIPALE -->

    <section class="main">
              <?= $content ?>
    </section>


    <!-- FOOTER -->

    <footer>
      <p>©Jean Forteroche - Billet simple pour l'Alaska - 2019<br />
      Projet 4 - OpenClassrooms / <a href="http://clement-fermaud.com/" target="_blank" style="color: grey">Clément Fermaud</p>
    </footer>
    </div>
  </body>
</html>