module CurrentCart
  private
    def set_article
      @cart = Article.find(session[:article_id])
    rescue ActiveRecord::RecordNotFound
      @article = Article.create
      session[:article_id] = @article.id
  end
end
