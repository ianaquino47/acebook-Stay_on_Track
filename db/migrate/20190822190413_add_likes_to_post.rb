class AddLikesToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :likes, :text, array:true, default: []
  end
end
