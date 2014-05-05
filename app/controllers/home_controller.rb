class HomeController < ApplicationController

	def index
		if user_signed_in?
			@list_company = Company.where("user_id = ?", current_user.id)
	  	# @list_company = @q.result(distinct: true)
	  else
	  	@q = Company.search(params[:q])
	  	@list_company = @q.result(distinct: true)
	  end
  	# .paginate(:page => params[:page], :per_page=>50)
	end



end