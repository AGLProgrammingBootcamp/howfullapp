class StoreDetabase < ActiveRecord::Base
    
 validates :store,presence:true
 validates :location,presence:true  
 validates :smorkingornot ,presence:true
 validates :capacity ,presence:true
 validates :filled_seat ,presence:true
end
