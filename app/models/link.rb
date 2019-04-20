class Link < ActiveRecord::Base

	belongs_to :user
	
	validates :Provedor_Enlace, presence: true
	validates :Red_Satelital, presence: true
	validates :Razon_Social, presence: true
	validates :Codigo, presence: true
	validates :Site, presence: true
	validates :Nombre_Enlace, presence: true
	validates :CID, presence: true, uniqueness: true
	validates :Sector_Red, presence: true
	validates :Estado, presence: true
	validates :Satelite, presence: true
	validates :Tipo, presence: true
	validates :Capacidad_Mbps, presence: true
	validates :Capacidad_Mhz, presence: true


end
