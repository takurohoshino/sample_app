class CreateInquiries < ActiveRecord::Migration[5.2]
  def self.up
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :message
      t.string :status　, default: '未回答'
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :inquiries
  end
end
