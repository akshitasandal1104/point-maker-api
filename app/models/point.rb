class Point < ApplicationRecord
    before_save :point_decode

    def point_decode
        self.coordinates = RGeo::GeoJSON.decode(self.coordinates)
    end
end
