class StatController < ApplicationController
  def show
  	@activity = Activity.all
  	@date = params[:date] ? Date.parse(params[:date]) : Time.zone.today.to_date
  	@week = (@date-7)..@date

  	if @activity.count == 0
  		flash[:notice] = "기록된 활동이 없습니다. 당신의 음주/운동/독서를 기록하고 통계를 확인하세요!"
  	end
  end
end
