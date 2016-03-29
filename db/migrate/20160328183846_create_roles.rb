class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
  end
  add_foreign_key :users, :roles, column: :email, primary_key: "email" 
end
