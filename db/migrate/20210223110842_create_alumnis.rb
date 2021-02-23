class CreateAlumnis < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnis do |t|
      t.date :from
      t.datetime :to

      t.timestamps
    end
  end
end
