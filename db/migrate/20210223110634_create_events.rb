class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.string :location
      t.string :spoc
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
