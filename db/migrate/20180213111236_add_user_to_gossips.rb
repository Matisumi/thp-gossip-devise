class AddUserToGossips < ActiveRecord::Migration[5.1]
  def change
    add_reference :gossips, :user, foreign_key: true
  end
end
