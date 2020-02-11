class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.string :name
      t.integer :district
      t.string :office
      t.string :party
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
