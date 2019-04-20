class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :Provedor_Enlace
      t.string :Red_Satelital
      t.string :Razon_Social
      t.string :Codigo
      t.string :Site
      t.string :Nombre_Enlace
      t.string :CID
      t.string :Sector_Red
      t.string :Estado
      t.string :Satelite
      t.string :Tipo
      t.integer :Capacidad_Mbps
      t.float :Capacidad_Mhz

      t.timestamps null: false
    end
  end
end
