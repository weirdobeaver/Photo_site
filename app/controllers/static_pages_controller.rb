class StaticPagesController < ApplicationController

  def home
  	@current_page = "/home"
  end

  def about
  	@current_page = "/about"
  end

  def portfolio
  	@current_page = "/portfolio"
  end

  def offer
  	@current_page = "/offer"
  end

  def contact
  	@current_page = "/contact"
  end

end
