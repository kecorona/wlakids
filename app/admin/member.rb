ActiveAdmin.register Member do
  permit_params :first_name, :last_name, :business, :phone, :location, :email, :manager, :new_member

  index do
    selectable_column
    column :name
    column :business
    column :email
    actions
  end

  filter :first_name
  filter :last_name
  filter :business
  filter :new_member

  form do |f|
    f.inputs "Member Details" do
      f.input :first_name, label: "First Name"
      f.input :last_name, label: "Last Name"
      f.input :business
      f.input :location, label: "Location"
      f.input :email, label: "Email Address"
      f.input :manager, label: "Immediate Manager"
      f.input :new_member, label: "New Member"
    end
    f.actions
  end

  show do
    panel "Member Details" do
      attributes_table_for member do
        row :name
        row :business
        row :phone
        row :location
        row :email
        row :manager
        row :new_member
      end
    end
    panel "Associated Sponsors" do
      table_for member.sponsors do
        column "Name", :id
        column "Level", :level
        column "Contact", :full_name
        column "Email", :email
      end
    end
  end
end