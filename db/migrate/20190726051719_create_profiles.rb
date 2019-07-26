class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references "author"
      t.string "contact_no"
      t.string "address"
      t.date "dob"
      profile belongs_to :author
      t.timestamps
    end
  end
end
