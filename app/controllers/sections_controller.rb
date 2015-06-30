class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def new
    @section = Section.new()
  end

end
