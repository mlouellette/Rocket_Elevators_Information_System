class CreateTypeOfBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :type_of_buildings do |t|
      t.boolean :residential
      t.boolean :commercial
      t.boolean :corporate
      t.boolean :hybrid

      t.timestamps
    end
  end
end
