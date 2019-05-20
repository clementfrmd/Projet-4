<?php
  namespace App\Controllers;

  use App\Models\ArticlesManager;
  use App\Models\CommentsManager;
  use App\Models\Comments;
  use App\Models\Articles;
  use App\Views\View;

  class ArticlesController
  {
    private $article;
    private $comments;


    public function __construct()
    {
      $this->article = new ArticlesManager;
      $this->comments = new CommentsManager;
    }


    // Show article and comments
    public function article($articleId)
    {
      // Push the article
      $article = $this->article->getArticle($articleId);
      // Push the comments from the article
      $comments = $this->comments->getComments($articleId);
      // Show article's title
      $articlesList = $this->article->getArticlesList();

      // vViewArticle generation
      $view = new View("Article");
      $view->generateView(array('article' => $article, 'comments' => $comments, 'articlesList' => $articlesList));
    }


    // Add comments to the article
    public function commentArticle($articleId, $username, $comment)
    {
      $newComment = new Comments(['articleId' => $articleId, 'username' => $username, 'comment' => $comment]);
      $this->comments->addComment($newComment);

      // Reload the article
      $this->article($articleId);
    }


    // Article modification function
    public function changeComment($articleId, $username, $comment, $report, $id)
    {
      $commentUpdate = new Comments(['articleId' => $articleId, 'username' => $username, 'comment' => $comment, 'report' => $report, 'id' => $id]);
      $this->comments->updateComment($commentUpdate);
    }
  }
?>