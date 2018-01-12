class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :company, foreign_key: true
      t.integer :company_id

      t.timestamps
    end
  end
end
