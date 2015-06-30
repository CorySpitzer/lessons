require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title}
  it { should validate_presence_of :content}
  it { should belong_to :section}

  describe "#next_valid_id" do
    it "returns the next id" do
      section = Section.create heading: 'programming'
      lesson1 = section.lessons.create title: "C", content: "Stuff"
      lesson2 = section.lessons.create title: "B", content: "Old Stuff"
      expect(lesson1.next_valid_id).to eq lesson2.id
    end
  end
end
