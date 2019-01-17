class AddPasswordToContacts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :contacts do |t|
      t.string :password
    end
  end

  def self.down
    change_table :contacts do |t|
      t.remove :password
    end
  end
end
