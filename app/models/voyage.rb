class Voyage < ApplicationRecord
    geocoded_by :port
    after_validation :geocode, if: :will_save_change_to_port?
end
