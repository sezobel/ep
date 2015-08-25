ActiveAdmin.register Profile do
  permit_params :name, :number, :email, :city, :state, :zip_code, :university, :degree_of_study, :year, :current_employer, :title, :duties

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
