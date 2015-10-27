class DiaryController < ApplicationController

  def list    
    @activity = Activity.where(:user_id => @current_user.id)
    @activity_by_date = @activity.group_by(&:date) 
    @date = params[:date] ? Date.parse(params[:date]) : Time.zone.today.to_date
  end

  def new
    @activity = Activity.new  
  end

  def create
    p = params.require(:activity).permit(:user_id, :date, :alcohol, :exercise, :reading, :comment)
    @activity = Activity.create(p)

    respond_to do |format|
      format.js
    end
  end

  def edit
    @activity = Activity.find_by(date: params[:date])
  end

  def update
    @activity = Activity.find_by(date: params[:activity][:date])
    p = params.require(:activity).permit(:user_id, :date, :alcohol, :exercise, :reading, :comment)
    @activity.update(p)

    respond_to do |format|
      format.js
    end
  end

  def stat
  end

end
