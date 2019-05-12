<!-- Title -->
<?php $this->title = "Accueil administration" ?>

<!-- MAIN -->

<aside class="aside">
  <div class="menuAside">
    <h2>Gérer les chapitres</h2>
    <ul>
      <li><a href="index.php?action=addArticleView"><i class="fas fa-folder-plus"></i> Ajouter un chapitre</a></li>

      <!-- Liste of articles -->
      <?php foreach ($articlesList as $articleList): ?>
        <li><a href="<?= "index.php?action=articleAdmin&id=" . $articleList['id'] ?>">
          <?php if (!$articleList['statut']): ?>
            <i class="fas fa-bell signal"></i>
          <?php endif; ?><?= $articleList['title'] ?></a>
        </li>
      <?php endforeach; ?>
    </ul>
  </div>
</aside>


<div class="content">
  <h2>Changer le mot de passe :</h2>
  <!-- Link to password modification -->
  <p class="comments">Pour modifier votre mot de passe <a
    href ="index.php?action=password">cliquez ici</a></p>
  <h2>Gestion des commentaires signalés :</h2>
  <div class="comments">
    <!-- Show reported comments -->
    <?php foreach ($comments as $comment): ?>
      <!-- Comment modification system-->
      <form class="formReport" action="index.php?action=updateComment" method="post">
        <fieldset class="report">

          <!-- Author and date of comment -->
          <legend><b><?= $comment['username'] ?></b> a commenté :</legend>

          <time class="headerRoport">le <?= $comment['dateCom_fr'] ?></time>

          <!-- Comment content -->
          <textarea name="txtReportCom" id="textReportCom" rows="8" cols="80"><?= $comment['comment'] ?></textarea>

          <div>
            <!-- Validation button -->
            <button type="submit">Valider</button>
            <!-- Cancelling button -->
            <button type="submit" formaction="index.php?action=deleteComment&id=<?= $comment['id'] ?>">Supprimer</button>
          </div>

          <!-- Values added -->
          <input type="hidden" name="idArticle" value="<?= $comment['articleId'] ?>" />
          <input type="hidden" name="idComment" value="<?= $comment['id'] ?>" />
          <input type="hidden" name="username" value="<?= $comment['username'] ?>" />
        </fieldset>
      </form>
    <?php endforeach; ?>
  </div>
</div>
