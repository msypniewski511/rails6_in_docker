class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :boddy
      t.datetime :published_at

      t.timestamps
    end
  end
end
