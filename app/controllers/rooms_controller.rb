class RoomsController < ApplicationController
  before_action :no_login
  
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:notice] = "ルームを登録しました"
      redirect_to("/users/#{@login_user.id}/index")
    else
      render("rooms/new")
    end
  end
  
  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
    if params[:search]
      @rooms = Room.where(["name LIKE? OR address LIKE?", "%#{params[:search]}%", "%#{params[:search]}%"])
    else
      @rooms = Room.all
    end
    @rooms_count = @rooms.count
  end

  def tokyo
    @rooms = Room.where(["address LIKE?", "%東京%"])
    @rooms_count = @rooms.count
  end

  def osaka
    @rooms = Room.where(["address LIKE?", "%大阪%"])
    @rooms_count = @rooms.count 
  end

  def kyoto
    @rooms = Room.where(["address LIKE?", "京都%"])
    @rooms_count = @rooms.count 
  end

  def sapporo
    @rooms = Room.where(["address LIKE?", "%札幌%"])
    @rooms_count = @rooms.count 
  end

  def room_params
    params.require(:room).permit(:name, :content, :fee, :address, :image, :user_id)
  end
  
end
