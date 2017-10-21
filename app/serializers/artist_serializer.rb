class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :bio

  has_many :songs
  has_one :photo
end
