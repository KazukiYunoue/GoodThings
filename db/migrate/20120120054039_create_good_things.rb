class CreateGoodThings < ActiveRecord::Migration
  def self.up
    create_table :good_things do |t|
      t.string :name, :limit => 20
      t.integer :count, :default => 0
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :good_things
  end
end
