ActiveAdmin.register Order do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    inputs 'Details' do
      f.input :status, as: :select, include_blank: false
      f.input :contact_info
      f.input :order_info
    end
    actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
