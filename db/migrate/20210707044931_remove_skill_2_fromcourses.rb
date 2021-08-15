class RemoveSkill2Fromcourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :Skill_2, :string
  end
end
