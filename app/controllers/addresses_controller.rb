class AddressesController < ApplicationController
  def create
    @address = Address.new(address_params)
    @address.user = current_user
    if @address.save!
      redirect_to profile_path
    else
      render profile_path, status: :unprocessable_entity
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def address_params
    params.require(:address).permit(:name, :address)
  end
end
