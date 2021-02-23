class AddAttachmentImageToUploads < ActiveRecord::Migration[6.0]
  def self.up
    change_table :uploads do |t|
      t.attachment :image
    end
  end
end
