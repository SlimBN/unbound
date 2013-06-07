require 'test_helper'

class PagesArticlesControllerTest < ActionController::TestCase
  setup do
    @pages_article = pages_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pages_article" do
    assert_difference('PagesArticle.count') do
      post :create, pages_article: { article_id: @pages_article.article_id, page_id: @pages_article.page_id }
    end

    assert_redirected_to pages_article_path(assigns(:pages_article))
  end

  test "should show pages_article" do
    get :show, id: @pages_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pages_article
    assert_response :success
  end

  test "should update pages_article" do
    put :update, id: @pages_article, pages_article: { article_id: @pages_article.article_id, page_id: @pages_article.page_id }
    assert_redirected_to pages_article_path(assigns(:pages_article))
  end

  test "should destroy pages_article" do
    assert_difference('PagesArticle.count', -1) do
      delete :destroy, id: @pages_article
    end

    assert_redirected_to pages_articles_path
  end
end
