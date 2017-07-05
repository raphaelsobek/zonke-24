class AddFieldToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :language, :string
    add_column :users, :ethinic, :string
  end
end
