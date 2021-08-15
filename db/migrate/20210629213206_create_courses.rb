class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :Course_nameL
      t.string :Hours
      t.string :Semester
      t.string :Skill_1
      t.string :Skill_2
      t.string :Skill_3


      t.timestamps
    end
  end
end
