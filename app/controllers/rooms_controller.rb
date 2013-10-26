class RoomsController < ApplicationController
  before_filter :config_opentok,:except => [:index]
  def index
    @rooms = Room.where(:public => true).order('created_at DESC')
    @new_room = Room.new
  end

  def create
    opentok_session = @opentok.create_session request.remote_addr
    args = room_params
    args[:sessionId] = opentok_session.session_id
    @new_room = Room.new(args)

    respond_to do |format|
      if @new_room.save
        format.html { redirect_to('/party/' + @new_room.id.to_s) }
      else
        format.html { render :controller => 'rooms',
          :action => 'index' }
      end
    end
  end

  def party
    @room = Room.find(params[:id])

    @tok_token = @opentok.generate_token :session_id =>@room.sessionId
  end

  private
  def config_opentok
    if @opentok.nil?
      @opentok = OpenTok::OpenTokSDK.new ENV['OPENTOK_API_KEY'], ENV['OPENTOK_SECRET']
    end
  end

  def room_params
    params.require(:room).permit(:name, :sessionId, :public)
  end
end
