ActiveAdmin.register Product do
  permit_params :name, :category_id, :image, :description

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
      f.input :category, as: :select, collection: Category.all
      f.input :image, as: :file
      f.input :description
      f.input :ingredients
      f.input :long_description
      f.input :price
      # f.has_many :product_images do |a|
      #   a.input :image, as: :file
      # end
    end
    actions
  end

  index do
    selectable_column
    column :id
    column :name
    column :category
    column :image
    column 'Product Images' do |resource|
      link_to '#Images', admin_product_product_images_path(resource.id)
    end
    actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end


end
