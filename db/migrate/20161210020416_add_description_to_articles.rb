class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :decription, :text
  end
end
