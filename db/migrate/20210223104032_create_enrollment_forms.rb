class CreateEnrollmentForms < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollment_forms do |t|
      t.datetime :middle_name
      t.text :last_name
      t.integer :branch
      t.integer :reg_no
      t.string :roll_no
      t.integer :semester
      t.string :blood_group
      t.string :nationality
      t.date :dob
      t.text :address
      t.string :state
      t.integer :pincode
      t.string :parent_name
      t.integer :parent_phone
      t.string :parent_email
      t.integer :phone
      t.string :email_id
      t.integer :language
      t.string :highest_education
      t.string :marks
      t.integer :year_of_study
      t.text :achievement_ncc
      t.text :achievement_sport
      t.text :achievement_art
      t.text :achievement_other
      t.string :fill_place
      t.datetime :fill_date

      t.timestamps
    end
  end
end
