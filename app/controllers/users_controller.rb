class UsersController < ApplicationController
  before_action :authenticate_user!, only: :index
  
  def index
    @users = User.all          
  end  

  def show
    @user = User.find(params[:id])   
    @user_posts = @user.posts      
  end  

end