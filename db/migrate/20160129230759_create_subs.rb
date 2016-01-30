class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :moderator, null: false

      t.timestamps null: false
    end
  end
end
