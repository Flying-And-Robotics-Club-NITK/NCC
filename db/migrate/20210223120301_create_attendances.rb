class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.date :date
      t.text :present

      t.timestamps
    end
  end
end
