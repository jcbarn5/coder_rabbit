class CreateCoders < ActiveRecord::Migration[5.0]
  def change
    create_table :coders do |t|
      t.integer :rating
      t.text :skills
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :languages
      t.string :bootcamp
      t.text :profile

      t.timestamps
    end
  end
end
