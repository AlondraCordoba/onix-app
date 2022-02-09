class AddUserIdToEvidence < ActiveRecord::Migration[7.0]
  def change
    add_reference :evidences, :user, null: false, foreign_key: true
  end
end
