class Room < ActiveRecord::Base
  belongs_to :user

  def self.assign
    # find_by returns first matching record or nil
    return Room.find_by assigned: false
  end
end
