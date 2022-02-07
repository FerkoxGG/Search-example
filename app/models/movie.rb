class Movie < ApplicationRecord
  belongs_to :director
  searchkick
  include PgSearch::Model
  multisearchable against: [:title, :synopsis]
end
