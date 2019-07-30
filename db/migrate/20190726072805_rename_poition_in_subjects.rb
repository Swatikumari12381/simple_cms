class RenamePoitionInSubjects < ActiveRecord::Migration[5.2]
  rename_column(:subjects,:poition,:position)
  def change
  end
end
