class Lesson < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :section

  acts_as_list scope: :section
end
