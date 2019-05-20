<!-- Title -->
<?php $this->title = "Modifier un chapitre" ?>


<!-- AFFICHAGE DE L'ARTICLE -->
<div class="content">
  <article class="articles">
    <h2 class="articleTitle">Gestion du chapitre : <?= $article['title'] ?></h2>
    <?php if (!$article['statut']): ?>
      <p class="signal"><i class="fas fa-exclamation"></i> Ce chapitre n'a pas encore été publié.</p>
    <?php endif; ?>
    <!-- FORMULAIRE DE MODIFICATION DE L'ARTICLE -->
    <form action="index.php?action=updateArticle&statut=1" method="post">

      <!-- Titre et date d'ajout de l'article -->
      <p>
        <label for="title">Entrez votre titre :</label>
        <input type="text" name="title" value= "<?= $article['title'] ?>" required>
      </p>

      <!-- contenu de l'article -->
      <textarea name="txtContent" id="mytextarea"><?= $article['content']?></textarea>

      <!-- bouton valider -->
<br/>
      <button type="submit">Publier</button>
      <button type="submit" formaction="index.php?action=updateArticle&statut=0">Enregistrer</button>
      <!-- bouton supprimer -->
      <button type="submit" formaction="index.php?action=deleteArticle&id=<?= $article['id'] ?>">Supprimer</button>

      <!-- Donnée supplémentaire envoyée -->
      <input type="hidden" name="idArticle" value="<?= $article['id'] ?>">
    </form>
  </article>
</div>
