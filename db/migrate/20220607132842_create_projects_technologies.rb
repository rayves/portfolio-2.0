class CreateProjectsTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_technologies do |t|
      t.references :project, null: false, foreign_key: true
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
