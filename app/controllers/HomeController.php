<?php
  namespace App\Controllers;

  use App\Models\ArticlesManager;
  use App\Views\View;


  class HomeController
  {
    private $article;


    public function __construct()
    {
      $this->article = new ArticlesManager;
    }


    // Home page view
    public function home()
    {
      // Get the last 3 articles
      $articles = $this->article->getArticles();
      // Get article's titles
      $articlesList = $this->article->getArticlesList();
      // viewHome generation function
      $view = new View("Home");
      $view->generateView(array('articles' => $articles, 'articlesList' => $articlesList));
    }
  }
?>
