class Project < ApplicationRecord
  has_many :projects_assets
  has_many :assets, through: :project_assets
  has_many :projects_technologies
  has_many :technologies, through: :projects_technologies
end
