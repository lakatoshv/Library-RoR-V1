class UserparamsController < ApplicationController
  def new
  	@userparam = Userparam.new
  end

  def create
 @userparam=current_user.build_userparam(user_params)

    if @userparam.save
      redirect_to root_path

    else
      render 'new'
  end
  end

  def edit
  end

  def profile
  end

  private
def user_params
  params.require(:userparam).permit(:firstname, :lastname, :city)
  
end
end
