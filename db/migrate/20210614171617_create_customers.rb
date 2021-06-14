class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.date :customer_creation_date
      t.string :company_name
      t.string :company_headquarters_address
      t.string :name_contact_company
      t.integer :company_contact_phone
      t.string :email_company_contact
      t.string :company_description
      t.string :name_service_technical_authority
      t.integer :technical_autority_phone_for_service
      t.string :technical_manager_email_for_service

      t.timestamps
    end
  end
end
