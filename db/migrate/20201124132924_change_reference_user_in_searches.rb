class ChangeReferenceUserInSearches < ActiveRecord::Migration[6.0]
  def change
    change_column_null :searches, :user_id, true
  end
end
