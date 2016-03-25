class CounterController < ApplicationController
     def count
          @enter_counter = EnterCounter.last
          @leave_counter = LeaveCounter.last
     end
end
