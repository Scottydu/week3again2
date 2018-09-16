class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :starts_at
      t.string :ends_at
      t.string :venue_id
      t.string :hero_image_url
      t.text :description
      t.string :category_id
      t.string :name

      t.timestamps
    end
  end
end
