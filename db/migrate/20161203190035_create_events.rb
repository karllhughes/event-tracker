class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.decimal :cost
      t.string :url
      t.string :image
      t.datetime :registration_starts_at
      t.datetime :registration_ends_at
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
