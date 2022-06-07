class Project < ApplicationRecord
  has_many :projects_assets, dependent: :destroy
  has_many :assets, through: :projects_assets
  has_many :projects_technologies, dependent: :destroy
  has_many :technologies, through: :projects_technologies
end
