class VisitorsController < ApplicationController
	
	def new
		@visitor = Visitor.new
	end

	def create
		@visitor = Visitor.new(secure_params) 
		if @visitor.valid?
			@visitor.subscribe
			flash[:notice] = "Signed up #{@visitor.email}." 
			redirect_to page_path('thanks')
		else
			render :new
		end 
	end
		
	private
	
	def secure_params 
		params.require(:visitor).permit(:email)
	end

end