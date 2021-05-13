class PointSerializer < ActiveModel::Serializer
  attributes :id, :title
  attribute(:coordinates) { point }

  def point
    point = RGeo::GeoJSON.encode(RGeo::GeoJSON.decode(self.coordinates))["coordinates"]
  end
end
