class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.column :name, :string

      t.timestamps 
    end
  end
end
