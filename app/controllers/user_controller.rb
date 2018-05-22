class UserController < ApplicationController
	def new
	  	@user = User.new
end



def create
		@user=User.new(params[:user])

			#p @user

		if @user.save
			redirect_to root_path
			

		else
			render 'new'
	end
end

	def login
		  	@user = User.new
	end

	def result
		form_user = User.new(params[:user])
		@user = User.find_by_email_and_password(form_user.email,form_user.password)
		if @user 
			session[:id]=@user.id
			redirect_to member_path
		else
			@user = User.new
			render 'login'
		end
	end


	end

	def logout
		session[:id]==nil
		redirect_to root_path
	end

	def profile
		@user = User.find(session[:id])
		
	end


	def edit
		@user = User.find(session[:id])

	end

	def update
 		@user = User.find(session[:id])
		if @user.update_attributes(params[:user])
			redirect_to root_path
		else 
			render 'edit'
		end


 	end
end

end
