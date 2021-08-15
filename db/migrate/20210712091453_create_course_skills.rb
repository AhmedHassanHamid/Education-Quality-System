class CreateCourseSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :course_skills do |t|
      t.string :course_code
      t.string :skills
      t.string :User_id

      t.timestamps
    end
  end
end
