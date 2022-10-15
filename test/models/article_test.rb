require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "article attributes must not be empty" do
    article = Article.new
    assert article.invalid?
    assert article.errors[:title].any?
    assert article.errors[:description].any?
    # assert article.errors[:image_url].any?
  end
end
