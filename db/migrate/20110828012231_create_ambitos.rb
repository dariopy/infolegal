class CreateAmbitos < ActiveRecord::Migration
  def self.up
    create_table :ambitos do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ambitos
  end
end
