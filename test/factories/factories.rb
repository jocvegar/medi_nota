FactoryBot.define do
	factory :user, class: User do
		email  	         "test@example.com"
		password         "password"
		primer_nombre    "Test"
		segundo_nombre   "Tset"
		primer_apellido  "Ramos"
		segundo_apellido "Somar"
	end
end
