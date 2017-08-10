module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
	end


	def faculty_in(faculty)
		session[:faculty_id] = faculty.id
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	

	def log_out
		session.delete(:user_id) if !session[:user_id].nil?
		session.delete(:faculty_id) if !session[:faculty_id].nil?
		@current_user = nil
		@current_faculty = nil
	end

	def logged_in?
		!current_user.nil? || !current_faculty.nil?
	end

	def correct_user?
		current_user == User.find_by(id: session[:user_id])
	end

	def current_faculty
		@current_faculty ||= Faculty.find_by(id: session[:faculty_id])

	end

	def correct_faculty?
		current_faculty == Faculty.find_by(id: session[:faculty_id])
	end


	def faculty_in?
		!current_faculty.nil?
	end

end
