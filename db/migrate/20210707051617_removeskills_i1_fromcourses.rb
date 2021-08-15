class RemoveskillsI1Fromcourses < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :skills_i1, :string
    add_column :courses, :skills_i1, :string
    add_column :courses, :skills_i2, :string
    add_column :courses, :skills_i3, :string
    add_column :courses, :skills_i4, :string
    add_column :courses, :skills_i5, :string
    add_column :courses, :skills_i6, :string
    add_column :courses, :skills_i7, :string
  end
end
