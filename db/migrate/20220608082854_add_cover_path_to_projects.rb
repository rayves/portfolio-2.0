class AddCoverPathToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :cover_path, :string
  end
end
