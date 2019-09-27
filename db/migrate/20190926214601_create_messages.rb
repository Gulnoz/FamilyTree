class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :picture
      t.integer :likes
      t.references :family, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
