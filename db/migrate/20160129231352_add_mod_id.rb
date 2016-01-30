class AddModId < ActiveRecord::Migration
  def change
    add_column :subs, :moderator_id, :integer
    add_index :subs, :moderator_id
  end
end
