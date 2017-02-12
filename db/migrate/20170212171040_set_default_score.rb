class SetDefaultScore < ActiveRecord::Migration[5.0]
  def change
    change_column_default :posts, :upvotes, 0
    change_column_default :posts, :downvotes, 0
  end
end
