FactoryBot.define do
  factory :paciente do
    nombre "MyString"
    edad 1
    fecha_de_ingreso "2018-10-29 19:23:50"
    antecedentes "MyText"
    diagnostico "MyText"
    plan "MyText"
    genero "MyString"
    camilla "MyString"
    association :hospital
  end
end
