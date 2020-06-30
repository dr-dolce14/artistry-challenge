class JoinersController < ApplicationController

    def new
    @joiner = Joiner.new
    @artists = Artist.all  
    @instruments = Instrument.all  
    end

    def create
    @joiner = Joiner.create(joiner_params)
    redirect_to artist_path(@joiner.artist.id)
    end

    private

    def joiner_params
        params.require(:joiner).permit(:instrument_id, :artist_id)
    end
end
