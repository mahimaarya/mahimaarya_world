class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :context
      t.references :category, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
