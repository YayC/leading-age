class Room < ActiveRecord::Base
  belongs_to :user

  def self.assign
    # find_by returns first matching record or nil
    room = Room.find_by assigned: false

    if room
      room.update(assigned: true)
      return room
    else
      return false
    end
  end

end
