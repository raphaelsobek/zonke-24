class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :about, :text
    add_column :users, :birthday, :date
    add_column :users, :mobile, :string
    add_column :users, :houtlyRate, :integer
    add_column :users, :streetAddress, :string
    add_column :users, :townCity, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :workLocation, :string
    add_column :users, :phoneType, :string
    add_column :users, :car, :string
  end
end
