ActiveAdmin.register Bus do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :model, :boarding, :destination, :no_of_seats, :time, :agence_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :model, :boarding, :destination, :no_of_seats, :agence_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
