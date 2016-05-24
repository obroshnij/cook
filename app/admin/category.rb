ActiveAdmin.register Category do
  permit_params :name, :product, :image, :description


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
      f.input :name
      f.input :products, as: :check_boxes
      f.input :image, as: :file
      f.input :description
    end
    actions
  end

  index do
    selectable_column
    column :id
    column :name
    column :product do |category|
      raw(category.products.map { |product| link_to product.name, admin_product_path(product) }.join(', '))
    end
    column :description
    actions
  end

end
