class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :heading
      t.text :message
      t.string :icon

      t.timestamps
    end
  end
end
