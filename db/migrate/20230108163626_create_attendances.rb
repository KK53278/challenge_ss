class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :status, null: false
      t.timestamps
    end
  end
end
