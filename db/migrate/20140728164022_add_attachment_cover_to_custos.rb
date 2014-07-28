class AddAttachmentCoverToCustos < ActiveRecord::Migration
  def self.up
    change_table :custos do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :custos, :cover
  end
end
