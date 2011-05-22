class AddColumnInPostOnModeration < ActiveRecord::Migration
  def self.up
    add_column :posts, :on_moderation, :boolean, :default => true
  end

  def self.down
    remove_column :posts, :comments, :on_moderation
  end
end
