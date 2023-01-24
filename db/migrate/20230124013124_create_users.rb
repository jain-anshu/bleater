class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.integer :location_id
      t.timestamps
    end

    create_table :locations do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
