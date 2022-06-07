class PagesController < ApplicationController
  def home; end

  def about; end

  def journey; end

  def projects
    @projects = Project.all
  end

  def project; end

  def blog
    @projects = Project.all
  end

  def contact; end
end

private
