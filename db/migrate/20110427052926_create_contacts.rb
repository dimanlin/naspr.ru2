class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :sender
      t.text :body
      t.string :contact_type
      t.string :email
      t.datetime :read_at, :default => nil
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
