class VoyagesController < ApplicationController
    def index
        @voyages = Voyage.all
    
        @markers = @voyages.geocoded.map do |voyage|
          {
            lat: voyage.latitude,
            lng: voyage.longitude
          }
        end
      end
end
