class Lesson < ActiveRecord::Base
  def self.all_id
    lessons = Lesson.all
    ids = []
    lessons.each do |lesson|
      ids << lesson.id
    end
    ids
  end

  def next_valid_id
    if Lesson.all_id.include?(self.id + 1)
      return id + 1
    else
      return 1
    end
  end

  def previous_valid_id
    if Lesson.all_id.include?(self.id - 1)
      return id - 1 
    else
      return 1
    end
  end
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :section

end
