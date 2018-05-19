class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :prd_name
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
