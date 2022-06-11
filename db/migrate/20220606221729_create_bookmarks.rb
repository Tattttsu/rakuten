class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.text :itemCode
      t.text :itemUrl
      t.text :itemPrice
      t.text :itemImage
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
