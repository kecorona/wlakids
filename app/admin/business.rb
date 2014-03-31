ActiveAdmin.register Business do
  permit_params :business_line, :member, index: true

  index do
    selectable_column
    column :business_line
    actions
  end

  filter :business_line
  filter :member

  form do |f|
    f.inputs "Business Lines" do
      f.input :business_line
    end
    f.actions
  end
end
