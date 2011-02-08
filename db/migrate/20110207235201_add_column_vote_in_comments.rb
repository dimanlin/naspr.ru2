class AddColumnVoteInComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :vote, :boolean
  end

  def self.down
    remove_column :comments, :vote
  end
end
