class AddShowFeedbackColumnToBgs < ActiveRecord::Migration
  def self.up
    add_column :bgs, :show_feedback, :boolean
  end

  def self.down
    remove_column :bgs, :show_feedback
  end
end