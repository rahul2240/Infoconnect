class AddDetailsToFaculty < ActiveRecord::Migration[5.1]
  def change
    add_column :faculties, :firstname, :string
    add_column :faculties, :lastname, :string
    add_column :faculties, :email, :string
    add_column :faculties, :university_roll_no, :string
    add_column :faculties, :contact_no, :string
    add_column :faculties, :address, :string
    add_column :faculties, :father_name, :string
    add_column :faculties, :mother_name, :string
  end
end
