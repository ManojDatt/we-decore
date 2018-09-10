class ContactsController < ApplicationController
  def index
  	@banners = Banner.all
  	@services = Service.all
  end

  def create
  end

  def request_quote
  end
end
