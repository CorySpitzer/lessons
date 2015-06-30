class Lesson < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :section

end
