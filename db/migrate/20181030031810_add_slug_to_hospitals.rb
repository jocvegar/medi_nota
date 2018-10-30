class AddSlugToHospitals < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :slug, :string
  end
end
