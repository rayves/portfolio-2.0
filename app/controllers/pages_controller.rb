class PagesController < ApplicationController
  def home; end

  def about; end

  def journey; end

  def projects
    @projects = Project.all
  end

  def project
    @project = Project.find(params[:id])
  end

  def blog
  end

  def contact; end
end

private

