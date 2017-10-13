class CreateSchema < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :password_type_thing, null: false

      t.timestamps
    end

    create_table :songs do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.references :user
      t.timestamps
    end
  end
end
