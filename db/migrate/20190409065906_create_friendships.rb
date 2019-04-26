class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.integer :status
      t.integer :sender_id
      t.integer :receiver_id
      t.string :sender_name
      t.string :receiver_name
      t.string :sender_picture

      t.timestamps
    end
  end
end
