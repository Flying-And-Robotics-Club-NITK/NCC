class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.integer :phone
      t.string :facebook
      t.string :linkedin
      t.string :instagram
      t.string :email
      t.text :statement

      t.timestamps
    end
  end
end
