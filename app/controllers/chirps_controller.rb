class ChirpsController < ApplicationController

  def create
    @chirp = Chirp.new(chirp_params)
    if @chirp.save
      redirect_to root_path
    end
  end

  def chirp_params
    params.require(:chirp).permit(:body, :user_id)
  end

end
