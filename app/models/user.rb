class User < ApplicationRecord
	include Clearance::User
	validates_presence_of :email, :primer_nombre, :primer_apellido, :password, :message => "no puede estar vacio."

end

