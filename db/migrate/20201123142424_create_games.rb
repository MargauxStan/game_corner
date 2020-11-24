class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.text :description
      t.string :genre
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :url_trailer

      t.timestamps
    end
  end
end
