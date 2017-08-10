class AddFileNameToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :file_name, :string
  end
end
