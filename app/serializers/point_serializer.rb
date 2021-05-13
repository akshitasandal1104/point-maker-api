class PointSerializer < ActiveModel::Serializer
  attributes :id, :title
  attribute(:coordinates) { point }

  def point
    point = RGeo::GeoJSON.decode(self.coordinates)
    point = RGeo::GeoJSON.encode(point)["coordinates"]
  end
end
