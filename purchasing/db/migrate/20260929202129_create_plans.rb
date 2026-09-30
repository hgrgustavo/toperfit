class CreatePlans < ActiveRecord::Migration[8.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.integer :price_in_cents

      t.timestamps
    end
  end
end
