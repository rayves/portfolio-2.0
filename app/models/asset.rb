class Asset < ApplicationRecord
    has_many :projects_assets
    has_many :projects, through: :projects_assets
end
