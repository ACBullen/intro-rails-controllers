class Artwork < ActiveRecord::Base
  validates :title, uniqueness: { scope: :artist_id }
  validates :title, presence: true
  validates :artist_id, presence: true


  belongs_to :artist,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: :User

  has_many :artwork_shares,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :Artwork

  has_many :viewers,
  through: :artwork_shares,
  source: :viewer

  has_many :comments,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :Comment,
  dependent: :destroy
end
