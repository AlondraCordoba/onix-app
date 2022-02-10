class AddProfileDataToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, index: true, unique: true
    add_column :users, :place_name, :string, index: true
    add_column :users, :phone_number, :string, index: true
    add_column :users, :logo, :string, default: "link to img", index: true
    add_column :users, :city, :string, index: true
    add_column :users, :state, :string, index: true
    add_column :users, :address, :text, index: true
  end
end
