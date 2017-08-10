class AddInfoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lastname, :string
    add_column :users, :course, :string
    add_column :users, :branch, :string
    add_column :users, :year, :string
    add_column :users, :section, :string
    add_column :users, :email, :string
    add_column :users, :university_roll_no, :string
    add_column :users, :contact_no, :string
    add_column :users, :address, :string
    add_column :users, :father_name, :string
    add_column :users, :mother_name, :string
  end
end
