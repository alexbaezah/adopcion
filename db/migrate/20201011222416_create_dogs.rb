class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :content
      t.boolean :adopted, null: false, default: false

      t.timestamps
    end
  end
end
