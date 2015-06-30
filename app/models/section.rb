class Section < ActiveRecord::Base
  validates_presence_of :heading
  has_many :lessons, -> { order(position: :asc)}
end
