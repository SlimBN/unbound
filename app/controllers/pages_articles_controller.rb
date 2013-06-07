class PagesArticlesController < ApplicationController
  # GET /pages_articles
  # GET /pages_articles.json
  def index
    @pages_articles = PagesArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages_articles }
    end
  end

  # GET /pages_articles/1
  # GET /pages_articles/1.json
  def show
    @pages_article = PagesArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pages_article }
    end
  end

  # GET /pages_articles/new
  # GET /pages_articles/new.json
  def new
    @pages_article = PagesArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pages_article }
    end
  end

  # GET /pages_articles/1/edit
  def edit
    @pages_article = PagesArticle.find(params[:id])
  end

  # POST /pages_articles
  # POST /pages_articles.json
  def create
    @pages_article = PagesArticle.new(params[:pages_article])

    respond_to do |format|
      if @pages_article.save
        format.html { redirect_to @pages_article, notice: 'Pages article was successfully created.' }
        format.json { render json: @pages_article, status: :created, location: @pages_article }
      else
        format.html { render action: "new" }
        format.json { render json: @pages_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages_articles/1
  # PUT /pages_articles/1.json
  def update
    @pages_article = PagesArticle.find(params[:id])

    respond_to do |format|
      if @pages_article.update_attributes(params[:pages_article])
        format.html { redirect_to @pages_article, notice: 'Pages article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pages_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages_articles/1
  # DELETE /pages_articles/1.json
  def destroy
    @pages_article = PagesArticle.find(params[:id])
    @pages_article.destroy

    respond_to do |format|
      format.html { redirect_to pages_articles_url }
      format.json { head :no_content }
    end
  end
end
