class AddSkillTypegtTocourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :skills_gt1, :string
    add_column :courses, :skills_gt2, :string
    add_column :courses, :skills_gt3, :string
    add_column :courses, :skills_gt4, :string
    add_column :courses, :skills_gt5, :string
  end
end
