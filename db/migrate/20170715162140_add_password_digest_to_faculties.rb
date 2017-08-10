class AddPasswordDigestToFaculties < ActiveRecord::Migration[5.1]
  def change
    add_column :faculties, :password_digest, :string
  end
end
