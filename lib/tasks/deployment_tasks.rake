namespace :deployment do
	desc "Creates the hospitals"
		task :update, [:env] => [:environment] do
		puts "\n\nStarting #{Time.now}"
		start_time  = Time.now
		err         = []
		success     = 0
		unless Hospital.find(1,2)
			if Hospital.create!(name: "IHSS")
				success +1
			end

			if Hospital.create!(name: "Hospital Escuela")
				success +1
			end
		end

		puts "\n\nDuration: #{Time.now - start_time} seconds"
		puts "\nCreated #{success} records."
	end

end
