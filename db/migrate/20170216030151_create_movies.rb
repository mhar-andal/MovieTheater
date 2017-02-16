class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :runtime
      t.string :imdb_link
      t.string :rotten_tomatoes_link

      t.timestamps
    end
  end
end
