class Voyage < ApplicationRecord
    geocoded_by :whaling_ground
    after_validation :geocode, if: :will_save_change_to_whaling_ground?
  end
