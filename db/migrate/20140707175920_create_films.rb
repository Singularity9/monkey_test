class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.text :film_summary
      t.integer :film_year
      t.binary :is_released_netflix
      t.binary :is_released_amazon_stream
      t.boolean :is_released_disc
      t.string :netlifx_link
      t.string :amazon_stream_link
      t.string :disc_link
      t.references :user, index: true

      t.timestamps
    end
  end
end
