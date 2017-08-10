class Micropost < ApplicationRecord
	belongs_to :faculty

	default_scope -> {order(created_at: :desc)}
	validates :faculty_id, presence: true
	validates :title,presence: true
	validates :body,presence: true

	has_attached_file :document
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

end
