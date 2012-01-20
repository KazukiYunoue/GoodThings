class CreateGoodThings < ActiveRecord::Migration
  def self.up
    create_table :good_things do |t|
      t.string :name
      t.integer :count

      t.timestamps
    end
  end

  def self.down
    drop_table :good_things
  end
end
