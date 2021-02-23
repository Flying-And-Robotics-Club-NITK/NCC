class AddUserDataToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :roll_no, :integer
    add_column :users, :designation, :integer
    add_column :users, :staff, :integer
    add_column :users, :permission_level, :integer
    add_column :users, :alumni, :boolean
    add_column :users, :email_official, :string
    add_column :users, :phone_official, :integer
    add_column :users, :blood_group, :string
  end
end
