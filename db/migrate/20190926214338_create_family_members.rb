class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|
      t.string :status
      t.references :family, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
