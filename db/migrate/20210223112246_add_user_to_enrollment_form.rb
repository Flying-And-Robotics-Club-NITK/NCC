class AddUserToEnrollmentForm < ActiveRecord::Migration[6.0]
  def change
    add_reference :enrollment_forms, :user, foreign_key: true
    add_reference :testimonials, :user, foreign_key: true
    add_reference :alumnis, :user, foreign_key: true
  end
end
