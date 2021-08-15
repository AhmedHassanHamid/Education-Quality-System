class RemoveSkill1Fromcourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :Skill_1, :string
  end
end
