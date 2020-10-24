class VoyagesController < ApplicationController
    def index
        @voyages = Voyage.all
        @markers = @voyages.geocoded.map do |voyage|
          {
            lat: voyage.latitude_voyage,
            lng: voyage.longitude_voyage,
            infoWindow: render_to_string(partial: "info_window", locals: { voyage: voyage })
          }
        end
    end

    def new
      @voyage = Voyage.new
    end

    def create
      @voyage = Voyage.new
    end
end