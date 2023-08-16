class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating

      t.timestamps 
      t.references :restaurant, null: false, foreign_key: true
    end
  end
end
