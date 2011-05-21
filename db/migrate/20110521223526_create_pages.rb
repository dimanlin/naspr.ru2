class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :permalink
      t.string :subject
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
