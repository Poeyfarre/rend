class CreateScales < ActiveRecord::Migration[6.0]
  def change
    create_table :scales do |t|
      t.integer :rating
      t.integer :politician_id
      t.integer :user_id

      t.timestamps
    end
  end
end
