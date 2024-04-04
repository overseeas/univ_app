class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :room_number
      t.string :title
      t.text :description
    end
  end
end
