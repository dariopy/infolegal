class CreateNormas < ActiveRecord::Migration
  def self.up
    create_table :normas do |t|
      t.string :norma
      t.string :titulo
      t.string :resumen
      t.string :notas
      t.integer :lugar_id
      t.integer :ambito_id

      t.timestamps
    end
  end

  def self.down
    drop_table :normas
  end
end
