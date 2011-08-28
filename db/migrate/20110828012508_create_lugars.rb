class CreateLugars < ActiveRecord::Migration
  def self.up
    create_table :lugars do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :lugars
  end
end
