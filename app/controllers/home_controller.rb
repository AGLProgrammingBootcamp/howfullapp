class HomeController < ApplicationController
  def enter_sensor
    @cafe = Cafe.find(params[:cafe_id])
    @enter_count = EnterCount.find_or_create_by(cafe_id: @cafe.id)
    @enter_count.entercount += 1;
    @enter_count.save
  end
  
  def leave_sensor
    @cafe = Cafe.find(params[:id])
    @leave_count = LeaveCount.find_or_create_by(cafe_id: @cafe.id)
    @leave_count.leavecount += 1;
    @leave_count.save
  end
end
