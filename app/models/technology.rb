class Technology < ApplicationRecord
  has_many :projects_technologies
  has_many :projects, through: :projects_technologies
end
