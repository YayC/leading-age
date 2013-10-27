class User < ActiveRecord::Base
  has_one :room
end
