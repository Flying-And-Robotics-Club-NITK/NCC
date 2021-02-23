class AddUploadToEnrollmentForm < ActiveRecord::Migration[6.0]
  def change
    add_reference :enrollment_forms, :signature, foreign_key: { to_table: :uploads }
    add_reference :enrollment_forms, :document, foreign_key: { to_table: :uploads }
  end
end
