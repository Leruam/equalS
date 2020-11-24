class AddContentAndDateToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :content, :text
    add_column :articles, :date, :date
  end
end
