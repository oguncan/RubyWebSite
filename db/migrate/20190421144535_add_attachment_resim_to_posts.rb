class AddAttachmentResimToPosts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :posts, :resim
  end
end
