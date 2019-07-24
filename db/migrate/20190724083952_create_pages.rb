class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      
      t.string 'name'
      t.string 'permalink'
      t.string 'position'
      t.boolean 'visible'
      t.references :subject
      t.timestamps
    end
  end
end
