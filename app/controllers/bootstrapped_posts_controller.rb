class BootstrappedPostsController < ApplicationController
  before_action :set_bootstrapped_post, only: [:show, :edit, :update, :destroy]

  # GET /bootstrapped_posts
  # GET /bootstrapped_posts.json
  def index
    @bootstrapped_posts = BootstrappedPost.all
  end

  # GET /bootstrapped_posts/1
  # GET /bootstrapped_posts/1.json
  def show
  end

  # GET /bootstrapped_posts/new
  def new
    @bootstrapped_post = BootstrappedPost.new
  end

  # GET /bootstrapped_posts/1/edit
  def edit
  end

  # POST /bootstrapped_posts
  # POST /bootstrapped_posts.json
  def create
    @bootstrapped_post = BootstrappedPost.new(bootstrapped_post_params)

    respond_to do |format|
      if @bootstrapped_post.save
        format.html { redirect_to @bootstrapped_post, notice: 'Bootstrapped post was successfully created.' }
        format.json { render :show, status: :created, location: @bootstrapped_post }
      else
        format.html { render :new }
        format.json { render json: @bootstrapped_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bootstrapped_posts/1
  # PATCH/PUT /bootstrapped_posts/1.json
  def update
    respond_to do |format|
      if @bootstrapped_post.update(bootstrapped_post_params)
        format.html { redirect_to @bootstrapped_post, notice: 'Bootstrapped post was successfully updated.' }
        format.json { render :show, status: :ok, location: @bootstrapped_post }
      else
        format.html { render :edit }
        format.json { render json: @bootstrapped_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bootstrapped_posts/1
  # DELETE /bootstrapped_posts/1.json
  def destroy
    @bootstrapped_post.destroy
    respond_to do |format|
      format.html { redirect_to bootstrapped_posts_url, notice: 'Bootstrapped post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bootstrapped_post
      @bootstrapped_post = BootstrappedPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bootstrapped_post_params
      params.require(:bootstrapped_post).permit(:title, :body, :published)
    end
end
