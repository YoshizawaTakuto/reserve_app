class ReservesController < ApplicationController
  before_action :no_login
  
  def index
  end

  def new
    if params[:start_day] and params[:end_day] and params[:count]
      @room = Room.find(params[:id])
      @start_day = params[:start_day].to_date
      if @start_day < Date.today
        @start_error = "開始日は今日以降の日付を選択してください"
        render("rooms/show")
        return
      end
      @end_day = params[:end_day].to_date
      if @end_day < @start_day
        @end_error = "終了日は開始日以降の日付を選択してください"
        render("rooms/show")
        return
      end
      @day_count = (@end_day - @start_day).to_i
      @total_people = params[:count].to_i
      if @total_people <= 0
        @people_error = "人数は0以上を入力してください"
        render("rooms/show")
        return
      end
      fee = @room.fee
      @total_fee = fee * @total_people.to_i * @day_count
      render("reserves/new")
    else
      render("rooms/show")
    end
  end

  def create
    @reserve = Reserve.new(params.permit(:user_id, :room_id, :start_day, :end_day, :day_count, :total_fee, :total_pepole))
    @reserve.save
    flash[:notice] = "予約が完了しました"
    redirect_to("/reserves/#{@reserve.id}/show")
  end

  def show
    @reserve = Reserve.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
