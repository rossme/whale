class VoyagesController < ApplicationController
    def create
        @voyage = Voyage.new
    end
end
