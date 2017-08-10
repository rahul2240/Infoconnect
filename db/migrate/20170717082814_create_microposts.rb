class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.string :title
      t.text :body
      t.references :faculty, foreign_key: true
      t.timestamps
    end
    add_index :microposts, [:faculty_id, :created_at]
  end
end
