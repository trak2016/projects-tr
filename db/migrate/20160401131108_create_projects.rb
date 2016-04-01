class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :topic
      t.string :description
      t.boolean :reserved, default: false
      t.string :supervisor

      t.timestamps null: false
    end
  end
  add_foreign_key :users, :projects, column: :email, primary_key: "supervisor"
end
