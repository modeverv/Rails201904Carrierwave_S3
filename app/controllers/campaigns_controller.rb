class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  # GET /campaigns
  # GET /campaigns.json
  def index
    #@campaigns = Campaign.all
    @campaigns = Campaign.where(blog_id: params[:blog_id])
    p @campaigns
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
  end

  # GET /campaigns/new
  def new
    blog = Blog.find(params[:blog_id])
    @campaign = blog.campaigns.new
#    @campaign = Campaign.new
#    if params[:blog_id]
#      @campaign.blog_id = params[:blog_id]
#    end
  end

  # GET /campaigns/1/edit
  def edit
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    @campaign = Campaign.new(campaign_params)
    respond_to do |format|
      if @campaign.save
        # SampleMailer.send_when_create.deliver_later
        MyJob.perform_later
        format.html { redirect_to blog_campaign_path(id: @campaign.id, blog_id: @campaign.blog_id), notice: 'Campaign was successfully created.' }
        format.html { redirect_to @campaign, notice: 'Campaign was successfully created.' }
        format.json { render :show, status: :created, location: @campaign }
      else
        format.html { render :new }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    respond_to do |format|
      if @campaign.update(campaign_params)
        format.html { redirect_to blog_campaign_path(id: @campaign.id, blog_id: @campaign.blog_id), notice: 'Campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign }
      else
        format.html { render :edit }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    blog_id = @campaign.blog_id
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to blog_campaigns_path(blog_id: blog_id), notice: 'Campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:name, :blog_id)
    end
end
