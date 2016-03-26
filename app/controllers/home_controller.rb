class HomeController < ApplicationController
  def enter_sensor
    @enter_counter = EnterCounter.new
    @enter_counter.enter = 1;
    @enter_counter.save
  end
  
  def leave_sensor
    @leave_counter = LeaveCounter.new
    @leave_counter.leave = 1;
    @leave_counter.save
  end
end
