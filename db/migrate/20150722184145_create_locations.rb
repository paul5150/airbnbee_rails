class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :city, :string
      t.column :member_id, :integer

      t.timestamps
    end
  end
end
