class Paciente < ApplicationRecord
	extend FriendlyId
	friendly_id :slug_it, use: :slugged
	# Gives an error on test when using custom slug soo to test uncomment the line below and comment out line above
	# friendly_id :nombre, use: :slugged

	belongs_to :hospital

	validates_presence_of :nombre, :edad, :fecha_de_ingreso, :antecedentes, :diagnostico, :plan, :genero, :camilla, :message => "no puede estar vacio"

	before_save :make_slug_pleasing

	scope :ingresados, lambda { where('dar_alta = ?', false).order("created_at DESC") }
	scope :egresados, lambda { where('dar_alta = ?', true).order("created_at DESC") }

	private

	def slug_it
		slug_array = [(self.nombre[0...15] + "-" + SecureRandom.random_number(1000).to_s + SecureRandom.urlsafe_base64(4)).parameterize.downcase]
		2.times do
			slug_array << (self.nombre[0...15] + "-" + SecureRandom.random_number(1000).to_s + SecureRandom.urlsafe_base64(4)).parameterize.downcase
		end
		slug_array
	end

	def make_slug_pleasing
	  if self.nombre
	    self.slug = (self.nombre + "-" + SecureRandom.random_number(1000).to_s + SecureRandom.urlsafe_base64(4)).parameterize.downcase
	  end
	end
end
