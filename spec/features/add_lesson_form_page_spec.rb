require 'rails_helper'

describe 'the new lesson path' do
  it 'visits the new lesson page' do
    section_test = Section.create({heading: 'Programming'})
    visit new_section_lesson_path(section_test.id)
    expect(page).to have_content "New Lesson"
  end

  # lesson_test = section_test.lessons.create({title: 'Javascript', content: 'Learning'})


  it 'creates a new lesson' do
    section = Section.create({heading: 'Programming'})
    visit new_section_lesson_path(section.id)
    fill_in 'lesson_title', :with => 'Javascript'
    fill_in 'lesson_content', :with => 'Put semicolons;'
    click_on 'Create Lesson'
    expect(page).to have_content 'Put semicolons;'
  end
end
