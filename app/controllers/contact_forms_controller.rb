class ContactFormsController < ApplicationController
	def new
		@contact = ContactForm.new
		@current_page = "/contact"
	end

	def create
		contact = ContactForm.new(params[:contact_form])
		contact.deliver
		redirect_to root_path
	end


end