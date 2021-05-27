class UsersController < ApplicationController
  
  before_action :set_login, {only: [:new, :create, :login_form, :login]}
  before_action :no_login, {only: [:show, :edit, :update, :logout]}
  before_action :no_edit, {only: [:edit, :update]}
  
  def index
    if @login_user
      @user = @login_user
    else
      @user = User.find(params[:id])
    end
    @rooms = @user.rooms
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "登録しました"
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("users/new")
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to(@user)
    else
      render("users/edit")
    end
  end

  def destroy
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      flash[:notice] = "ログインしました"
      session[:user_id] = @user.id
      redirect_to("/")
    else
      @email = params[:email]
      @password = params[:password]
      @error_message = "メールアドレスかパスワードが間違っています"
      render("login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/")
  end

  def rooms
    @user = User.find(params[:id])
    @reserves = @user.reserves.order(created_at: :desc)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :content)
  end

  def no_edit
    if @login_user.id != params[:id].to_i
      redirect_to("/")
    end
  end
end