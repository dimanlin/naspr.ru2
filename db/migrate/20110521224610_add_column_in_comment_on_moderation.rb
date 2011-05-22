class AddColumnInCommentOnModeration < ActiveRecord::Migration
  def self.up
    add_column :comments, :on_moderation, :boolean, :default => true
  end

  def self.down
    remove_column :comments, :on_moderation
  end
end
