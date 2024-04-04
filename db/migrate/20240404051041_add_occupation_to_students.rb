class AddOccupationToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :occupation, :string
  end
end
