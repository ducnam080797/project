class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :user, foreign_key: true
      t.integer :add_friend
      t.integer :watting
      t.integer :friend

      t.timestamps
    end
  end
end
