class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:customer).permit(:customertype, :name, :identification, :phone, :country, :state, :address, :zipcode, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:customer).permit(:name, :email, :password, :password_confirmation, :current_password)
	end

end