class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.column :rooms, :integer
      t.column :price, :integer
      t.column :location_id, :integer
      t.column :member_id, :integer

      t.timestamps
    end
  end
end
