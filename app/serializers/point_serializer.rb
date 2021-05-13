class PointSerializer < ActiveModel::Serializer
  attributes :id, :title
  # attribute(:coordinates) { RGeo::GeoJSON.encode(object.coordinates)["coordinates"] }
end
