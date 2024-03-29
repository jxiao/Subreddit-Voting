class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :image, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :caption
      t.integer :upvotes

      t.timestamps
    end
  end
end
