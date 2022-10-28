class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :nbrAppBuild
      t.integer :NbrFloors
      t.integer :nbrBasementFloors
      t.integer :nbrDisBui
      t.integer :nbrParking
      t.integer :nbrElevatorCages
      t.integer :nbrOccPerFloor
      t.integer :nbrActPerDay

      t.timestamps
    end
  end
end
