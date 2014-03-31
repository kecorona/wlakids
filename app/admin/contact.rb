ActiveAdmin.register Contact do
  permit_params :type, :first_name, :last_name, :email, :organization, :address

  index do
    selectable_column
    column :type
    column :first_name
    column :last_name
    column :organization
    actions
  end

  filter :type
  filter :first_name
  filter :last_name
  filter :organization

  form do |f|
    f.inputs "Contact Details" do
      f.input :type
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :organization
      f.input :address
    end
    f.actions
  end
end
