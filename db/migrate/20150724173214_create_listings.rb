class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.column :rooms, :integer
      t.column :price, :integer
      t.column :location_id, :integer
      t.column :member_id, :integer
      t.column :image_file_name, :string
      t.column :image_content_type, :string
      t.column :image_file_size, :integer

      t.column :timestamps, :integer
    end
  end
end
