class CreateTypeOfServices < ActiveRecord::Migration[5.2]
  def change
    create_table :type_of_services do |t|
      t.boolean :standard
      t.boolean :premium
      t.boolean :excelium

      t.timestamps
    end
  end
end
