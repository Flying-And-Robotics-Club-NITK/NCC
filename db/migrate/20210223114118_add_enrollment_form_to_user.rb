class AddEnrollmentFormToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :enrollment_form, foreign_key: true
  end
end
