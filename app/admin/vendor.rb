ActiveAdmin.register Vendor do
  permit_params :name, :tier_no, :line_of_business, :wla_contact, :contact_first, :contact_last, :email, :date_std, :date_invite, :phone, :address

  index do
    selectable_column
    column :name
    column :tier_no
    column :line_of_business
    column :wla_contact
    column :contact_first
    column :contact_last
    column :email
    actions
  end

  filter :name
  filter :tier_no
  filter :line_of_business
  filter :wla_contact
  filter :contact_first
  filter :contact_last

  form do |f|
    f.inputs "Vendor Details" do
      f.input :name
      f.input :tier_no
      f.input :line_of_business
      f.input :wla_contact
      f.input :contact_first
      f.input :contact_last
      f.input :email
      f.input :date_std
      f.input :date_invite
      f.input :phone
      f.input :address
    end
    f.actions
  end
end
