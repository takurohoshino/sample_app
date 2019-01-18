class AddStatusToInquiries < ActiveRecord::Migration[5.2]
  def self.up
    change_table :inquiries do |t|
      t.string :status, default: '未回答'
    end
  end

  def self.down
    change_table :inquiries do |t|
      t.remove :status, default: '未回答'
    end
  end
end
