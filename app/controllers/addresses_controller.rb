class AddressesController < ApplicationController
  def create
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to profile_path, status: :see_other
  end
end
