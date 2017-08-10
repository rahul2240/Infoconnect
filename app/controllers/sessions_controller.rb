class SessionsController < ApplicationController
  def new
  end

  def create

  		if user = User.find_by(username: params[:session][:username]) 
        		if (user && user.authenticate(params[:session][:password])) 
        			log_in user
        			redirect_to root_path
        		else
        			render 'new'
        		end

      elsif faculty = Faculty.find_by(username: params[:session][:username])
            if (faculty && faculty.authenticate(params[:session][:password])) 
              faculty_in faculty
          
              redirect_to root_path
            else
              render 'new'
            end

        else
              render 'new'
              
      end


  end

  def destroy
  	log_out 
   
  	redirect_to root_path
  end





 end
