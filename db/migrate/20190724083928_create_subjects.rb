class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string 'name'
      t.integer 'poition'
      t.boolean 'visible'
      t.timestamps
    end
  end
end
