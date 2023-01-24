class CreateBleats < ActiveRecord::Migration[7.0]
  def change
    create_table :bleats do |t|
      t.string :body
      t.integer :author_id 
      t.timestamps
    end
  end
end
