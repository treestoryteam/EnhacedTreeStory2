class CreateAdditions < ActiveRecord::Migration
  def change
    create_table :additions do |t|
      t.datetime :purchase_date
      t.float :base_price
      t.references :user, index: true, foreign_key: true
      t.references :story, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
