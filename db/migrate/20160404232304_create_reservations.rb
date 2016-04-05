class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.string :student_email
      t.string :supervisor_email

      t.timestamps null: false
    end
  end
end
