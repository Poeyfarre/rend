class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :state
      t.string :office
      t.string :party

      t.timestamps
    end
  end
end
