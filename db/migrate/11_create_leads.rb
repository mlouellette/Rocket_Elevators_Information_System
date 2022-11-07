class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|

      t.string "contactName", limit: 99, null: false
      t.string "contactBuisnessName", limit: 99, null: false
      t.string "contactEmail", limit: 99, null: false
      t.string "contactPhone", null: false
      t.string "projectName"
      t.string "contactProject"
      t.string "projectDescription"
      t.string "contactDepartement", limit: 99, null: false
      t.string "message"
      t.binary "contactAttachment", limit: 1
      t.date "contactDate", null: false

      t.timestamps
    end
  end
end
