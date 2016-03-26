class Cafe < ActiveRecord::Base
  validates :store_id,presence:true  
end
