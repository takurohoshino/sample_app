class CreateContacts < ActiveRecord::Migration[5.2]
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :password_digest
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :contacts
  end
end
