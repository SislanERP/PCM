ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :password, :password_confirmation

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
#
# or
#
  # permit_params do
  #   permitted = [:email, :name, :reset_password_token, :reset_password_sent_at, :remember_created_at, :current_sign_in_ip, :last_sign_in_ip, :last_sign_in_at, :current_sign_in_at]
  #   permitted << :encrypted_password if params[:action] == 'create'
  #   permitted
  # end


end
