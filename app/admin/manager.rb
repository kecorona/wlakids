ActiveAdmin.register Manager do
  permit_params :first_name, :last_name, :business

  index do
    selectable_column
    column :name
    actions
  end

  filter :first_name
  filter :last_name
  filter :business

  form do |f|
    f.inputs "Immediate Managers" do
      f.input :first_name
      f.input :last_name
      f.input :business
    end
    f.actions
  end
end