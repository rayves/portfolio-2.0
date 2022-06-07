class CreateProjectsAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_assets do |t|
      t.references :project, null: false, foreign_key: true
      t.references :asset, null: false, foreign_key: true

      t.timestamps
    end
  end
end
