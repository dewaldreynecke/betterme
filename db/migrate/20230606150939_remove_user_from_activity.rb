class RemoveUserFromActivity < ActiveRecord::Migration[7.0]
  def change
    remove_reference :activities, :user, foreign_key: true, index: false
  end
end
