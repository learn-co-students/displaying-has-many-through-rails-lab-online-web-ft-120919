class ChangeAgeToIntegerInPatients < ActiveRecord::Migration[5.0]
  def up
    change_column :patients, :age, :integer
  end

  def down
    change_column :patients, :age, :string
  end
end
