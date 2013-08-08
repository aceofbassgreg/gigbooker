class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    @address = Address.find(params[:address])
  end
end
