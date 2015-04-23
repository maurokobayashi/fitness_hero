class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
      t.date :birthdate,    null: false
      t.string :email,      null: false
      t.string :mobile,     null: false
      t.string :cref,       null: false
      t.string :gender,     null: false
      t.string :avatar
      t.integer :status,    null: false
      t.integer :user_id,   null: false

      t.timestamps null: false
    end

    add_foreign_key :personals, :users
  end
end
