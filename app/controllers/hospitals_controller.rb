class HospitalsController < ApplicationController
	before_action :require_login

	def index
		@hospitals = Hospital.order('name ASC')
	end
end
