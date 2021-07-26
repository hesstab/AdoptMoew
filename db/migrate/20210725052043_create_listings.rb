class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.text :name
      t.integer :age
      t.string :gender
      t.text :breed
      t.text :color
      t.text :image
      t.boolean :microchipped
      t.boolean :desexed
      t.integer :user_id
      t.integer :breed_id

      t.timestamps
    end
  end
end
