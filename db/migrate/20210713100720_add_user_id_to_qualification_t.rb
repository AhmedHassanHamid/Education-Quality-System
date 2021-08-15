class AddUserIdToQualificationT < ActiveRecord::Migration[6.1]
  def change
    add_column :qualification_ts, :user_id, :integer
    add_index :qualification_ts, :user_id
  end
end
