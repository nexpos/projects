class Artist < ApplicationRecord
  belongs_to :genre
  has_many :songs, dependent: :destroy
end
