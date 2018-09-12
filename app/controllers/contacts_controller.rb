class ContactsController < ApplicationController
  def index
  	@banners = Banner.all
  	@services = Service.includes(:galleries).all
  	@about = AboutUs.last
  	@gallery = Gallery.recomends
  	@teams = Team.includes(:social_links).all
  	@testimonial = Testimonial.all	
  end

  def create
  end

  def request_quote
  end
end
