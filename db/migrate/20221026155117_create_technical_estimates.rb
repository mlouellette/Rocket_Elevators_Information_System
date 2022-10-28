class CreateTechnicalEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :technical_estimates do |t|
      t.integer :nbrElevatorRecommended
      t.integer :nbrUnitPrice
      t.integer :nbrPriceOfElevator
      t.integer :nbrCostOfInstallation
      t.integer :nbrTotal

      t.timestamps
    end
  end
end
