class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.boolean :in_progess
      t.boolean :completed
      t.text :description
      t.decimal :amount
      t.references :coder, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
