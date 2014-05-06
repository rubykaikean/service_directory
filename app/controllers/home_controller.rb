class HomeController < ApplicationController

	def index
		if user_signed_in?
			@list_company = Company.where("user_id = ?", current_user.id)
			
	  	# @list_company = @q.result(distinct: true)
	  else
	  	@q = Company.search(params[:q])
	  	@list_company = @q.result(distinct: true)
	  	#@services = Services.where("company_id = ?", @list_company.id)
	  end
  	# .paginate(:page => params[:page], :per_page=>50)
	end

	def company_services_detail
		# render :text => params.to_json

		if params[:company_id].present?
			@list_company = Company.find(params[:company_id])
		# 	@services_list = Service.where("company_id = ?", params[:company_id])
		end 
	end

end