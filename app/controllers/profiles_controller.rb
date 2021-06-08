class ProfilesController < ApplicationController
  before_action :authenticate_user!,only:[:new,:edit,:destroy]
  before_action :move_to_index, except: [:index,:show,:new,:create]


  def index
    @profiles= Profile.all
  end

  def new
   @profile = Profile.new
  end

 #root_pathは後に変更？
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
    redirect_to root_path
    else
    render :new
    end
   
  end

def show
  @profile= Profile.find(params[:id])
end 

def edit
  @profile= Profile.find(params[:id])
end

def update
  @profile = Profile.find(params[:id])
  if @profile.update(profile_params)
    redirect_to root_path
  else
    render :edit
  end
end

def destroy
  @profiles = Profile.find(params[:id])
  @profiles.destroy
  redirect_to root_path
end



private

 def profile_params
   params.require(:profile).permit(:message, :age, :career, :image).merge(user_id: current_user.id)
 end

 def move_to_index
   @profile = Profile.find(params[:id])
   unless current_user.id == @profile.user.id
     redirect_to action: :index
   end
 end

end


