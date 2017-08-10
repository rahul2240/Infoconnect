class AddIndexToFacultiesUsername < ActiveRecord::Migration[5.1]
  def change
  	add_index :faculties, :username, unique: true
  end
end
