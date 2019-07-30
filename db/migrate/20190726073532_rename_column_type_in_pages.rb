class RenameColumnTypeInPages < ActiveRecord::Migration[5.2]
  def change
    change_column(:pages, :position, 'integer USING CAST(position AS integer)')
  end
end
