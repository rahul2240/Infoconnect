class AddDocumentToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_attachment :microposts, :document
  end
end
