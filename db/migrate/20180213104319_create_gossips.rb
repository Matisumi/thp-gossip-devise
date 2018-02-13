class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.text :content

      t.timestamps
    end
  end
end
