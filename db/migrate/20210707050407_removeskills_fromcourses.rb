class RemoveskillsFromcourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :skills, :string
    add_column :courses, :skills_ku1, :string
    add_column :courses, :skills_ku2, :string
    add_column :courses, :skills_ku3, :string
    add_column :courses, :skills_ku4, :string
    add_column :courses, :skills_ku5, :string
    add_column :courses, :skills_ku6, :string
    add_column :courses, :skills_ku7, :string
    add_column :courses, :skills_ku8, :string
    add_column :courses, :skills_ku9, :string
  end
end
