class AddStatusTypeTocourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :skills, :string
  end
end
