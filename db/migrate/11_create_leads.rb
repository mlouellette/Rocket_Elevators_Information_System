class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|

      t.string "contactName"
      t.string "contactBuisnessName"
      t.string "contactEmail"
      t.string "contactPhone"
      t.string "projectName"
      t.string "projectDescription"
      t.string "contactDepartement"
      t.string "message"
      t.binary "contactAttachment"
      t.date "contactDate", null: false
    

      t.timestamps
    end
  end
end
