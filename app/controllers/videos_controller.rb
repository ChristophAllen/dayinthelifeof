class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  def like
    @video.upvote_from current_user
    render layout: false
  end

  def unlike
    @video.downvote_from current_user
    render layout: false
  end

  def upvote
    @video = Video.find(params[:id])
    @ip = request.remote_ip
    Ipaddresstracker.delete_all
    if Ipaddresstracker.find_by(ipaddress: @ip)
      
    else
      Ipaddresstracker.create(:ipaddress => @ip, :upvoted => true, :upvotedcount => 1)
      @video.vote_by voter: User.first, :duplicate => true
    end
    redirect_to :back
  end

  def downvote
    Ipaddresstracker.delete_all
    @video = Video.find(params[:id])
    @video.downvote_by User.first
    redirect_to :back
  end
  
  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.search(params[:search], params[:id]).order(:cached_votes_total=> :desc)
    if @videos 
      
    else
      @videos = Video.all
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    # puts params[:id]
    @boolean = params[:boolean]
    title = Video.find(params[:id]).title
    @videos = []
    Video.all.each do |x|
      if x.title == title
        @videos.push(x)
      end
    end
    @videos = @videos.shuffle
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  
  def create
    @video = Video.new(video_params)
    
    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:title, :file, :contributor, :email, :phone)
    end
end

# have pop up messages based on IP address (vote without an account, make an account to save videos, mark seen ones..)

# what video file types can i actually upload

# how to upvote without the page reloading