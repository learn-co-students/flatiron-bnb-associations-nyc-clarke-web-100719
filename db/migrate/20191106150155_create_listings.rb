class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.text :description
      t.decimal :price
      t.belongs_to :neighborhood, foreign_key: true
      t.belongs_to :host, foreign_key: true

      t.timestamps
    end
  end
end
