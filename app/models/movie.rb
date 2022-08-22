class Movie < ApplicationRecord
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  validates :title, :overview, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  
end
