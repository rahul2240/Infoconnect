class Faculty < ApplicationRecord
	has_many :microposts

	

	validates :username, presence: true, uniqueness: {case_sensitive: false}

	has_secure_password
end
