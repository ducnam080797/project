class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true
      t.string :content

      t.timestamps
    end
    add_index :comments, [:user_id, :created_at]
  end
end
