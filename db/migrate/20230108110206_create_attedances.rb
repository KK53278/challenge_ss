class CreateAttedances < ActiveRecord::Migration[7.0]
  def change
    create_table :attedances do |t|
      t.string  :status, null: false
      t.timestamps
    end
  end
end
