class Projeto < ApplicationRecord
	belongs_to :usuario
	has_many :comentarios
	#belongs_to :categoria

	has_attached_file :foto_projeto, styles: { medium: "800x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :foto_projeto, content_type: /\Aimage\/.*\z/

end
