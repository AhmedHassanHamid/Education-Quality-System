class AddSkillTypeppTocourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :skills_pp1, :string
    add_column :courses, :skills_pp2, :string
    add_column :courses, :skills_pp3, :string
    add_column :courses, :skills_pp4, :string
    add_column :courses, :skills_pp5, :string
  end
end
