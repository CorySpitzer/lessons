require 'rails_helper'

describe "visiting the home page" do
  it 'visits the homepage' do
    visit root_path
    expect(page).to have_content 'Table of Contents'
  end
end
