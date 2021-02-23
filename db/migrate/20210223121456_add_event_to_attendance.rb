class AddEventToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_reference :attendances, :event, foreign_key: true
    add_reference :events, :attendance, foreign_key: true
  end
end
