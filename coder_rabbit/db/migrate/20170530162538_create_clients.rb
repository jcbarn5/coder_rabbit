class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.integer :rating
      t.string :company_name
      t.string :admin_name
      t.string :email
      t.string :password_digest
      t.text :profile

      t.timestamps
    end
  end
end
