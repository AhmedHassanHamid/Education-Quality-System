class CreateQualifications < ActiveRecord::Migration[6.1]
  def change
    create_table :qualifications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :skills

      t.timestamps
    end
  end
end
