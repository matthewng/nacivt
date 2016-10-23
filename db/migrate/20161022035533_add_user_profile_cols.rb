class AddUserProfileCols < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string, length: 1
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :string
    add_column :users, :country, :string

    add_column :users, :phone_home, :string
    add_column :users, :phone_mobile, :string
    add_column :users, :birthday, :date
    add_column :users, :school, :string
    add_column :users, :education_level, :string
    add_column :users, :occupation, :string
    add_column :users, :salary, :integer
    add_column :users, :ethnicity, :string
    add_column :users, :has_verification, :boolean
    add_column :users, :medical_conditions, :string
    add_column :users, :allergies, :string
    add_column :users, :contact_parent_name, :string
    add_column :users, :contact_parent_address, :string
    add_column :users, :contact_parent_phone, :string
    add_column :users, :contact_parent_email, :string
    add_column :users, :contact_emergency_name, :string
    add_column :users, :contact_emergency_address, :string
    add_column :users, :contact_emergency_phone, :string
    add_column :users, :contact_emergency_email, :string
    add_column :users, :contact_emergency_relation, :string
  end
end
