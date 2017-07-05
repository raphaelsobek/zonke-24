class GigsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :search, :show]
  def index
    @gigs= Gig.all.order_list(params[:sort_by]).page(params[:page]).per(5)
    @users = User.all

  end
  def new
  	@gig = Gig.new
  end
  def create
    @gig = Gig.new(gig_params)
    @gig.user= current_user
     if @gig.save
     redirect_to @gig
   else
    flash[:error] = @gig.erors.full_messages.to_sentence
    render :new
  end
  end

  def show
    @gig = Gig.find(params[:id])
    @proposals = @gig.proposals.order(created_at: :desc)
    @awarded_proposal= Proposal.where(id: @gig.awarded_proposal).first
    @reviews = Review.where(gig_id: @gig)
    if @reviews.blank?
      @avg_rating= 0
    else
      @avg_rating= @reviews.average(:rating).round(2)

    end
  end
  
  def edit
      @gig = Gig.find(params[:id])
      if current_user != @gig.user
      flash[:error]= "your are not the owner!"
      redirect_to @gig
    end   
  end
  def update
    @gig = Gig.find(params[:id])
    if current_user == @gig.user
    @gig.update(gig_params)
  else
     flash[:error]= "your are not the owner!"
   end
    redirect_to @gig  
  end
  def destroy
     @gig = Gig.find(params[:id])
      if current_user == @gig.user
     @gig.destroy
      else
     flash[:error]= "your are not the owner!"
   end
     redirect_to :mygigs
    
  end
  def search
    if params[:category].blank? && params[:search].blank?
      @gigs = Gig.all.order(created_at: :desc).page(params[:page]).per(5)
    else

    @gigs = Gig.search(params).page(params[:page]).per(5) 
  end
 end
  def mygigs
    @gigs= Gig.where(user_id: current_user).order(created_at: :asc)
    
  end
  private 
  def gig_params
  	params.require(:gig).permit(:name, :description, :budget, :location, :open, :category_id, :skill_list, :awarded_proposal,:image)
  end
end