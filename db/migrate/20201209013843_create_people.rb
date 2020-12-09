class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :budget
      t.string :gifts
      t.boolean :purchased
      t.boolean :wrapped
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
