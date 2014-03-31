ActiveAdmin.register Player do
  permit_params :foursome, :first_name, :last_name, :company, :shirt_size, :rental_clubs, :comments, :dinner_attendance

  index do
    selectable_column
    column :foursome
    column :player_name
    column :company
    column :dinner_attendance
    actions
  end

  filter :first_name
  filter :last_name
  filter :company

  form do |f|
    f.inputs "Player Details" do
      f.input :foursome
      f.input :first_name
      f.input :last_name
      f.input :company
      f.input :shirt_size
      f.input :rental_clubs
      f.input :comments
      f.input :dinner_attendance
    end
    f.actions
  end
end