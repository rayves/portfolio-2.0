class ProjectsAsset < ApplicationRecord
  belongs_to :project
  belongs_to :asset
end
