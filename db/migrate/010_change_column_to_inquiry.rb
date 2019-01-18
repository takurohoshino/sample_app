class ChangeColumnToInquiry < ActiveRecord::Migration[5.2]
  def self.up
    change_column :inquiries, :status, :string
  end

  def self.down
    change_column :inquiries, :status, :string, default: '未回答'
  end
end
