class User < ApplicationRecord


	extend FriendlyId
	friendly_id :username, use: :slugged

	validates :username, presence: true,uniqueness: {case_sensitive: false}
	
 	
	has_secure_password



	end
