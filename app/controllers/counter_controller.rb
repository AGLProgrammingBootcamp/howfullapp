class CounterController < ApplicationController
     def count
      @cafe_id = params[:cafe_id]
      @enter_count = EnterCount.find_by(cafe_id: @cafe_id)
      @leave_count = LeaveCount.find_by(cafe_id: @cafe_id)
     end
end
