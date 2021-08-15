class RemoveSkill3Fromcourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :Skill_3, :string
  end
end
