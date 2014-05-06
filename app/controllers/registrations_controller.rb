class RegistrationsController < Devise::RegistrationsController

	# def create
	# 	# render :text => params.to_json
	# 	user = User.new
	# 	if params[:commit] == "Sign up as poster"
	# 		user.user_type = "1"
	# 		user.save
	# 		redirect_to root_url , notice: "Sign in "
	# 	elsif params[:commit] == "Sign up as seeker"
	# 		user.user_type = "2"
	# 		user.save
	# 		redirect_to root_url
	# 	end
	# end


end