ActiveAdmin.register Sponsor do
  permit_params :name, :level, :member_id, :contact_first, :contact_last, :phone, :email, :address

  index do
    selectable_column
    column :name
    column :level
    column :full_name, label: 'Contact Name'
    column :member_id, label: "WLA Contact"
    actions
  end

  filter :name
  filter :level
  filter :contact_first
  filter :contact_last
  filter :member_id

  form do |f|
    f.inputs "Sponsor Details" do
      f.input :name
      f.input :level, as: :select, collection: ['Bronze', 'Silver', 'Platinum', 'Individual Golfer(s)']
      f.input :member_id, as: :select, collection: Member.all, member_id: lambda { |i| i.name }, label: "WLA Contact"
    end
    f.inputs "Contact" do
      f.input :contact_first, label: "First Name"
      f.input :contact_last, label: "Last Name"
      f.input :phone
      f.input :email
      f.input :address
    end
    f.actions
  end
end
