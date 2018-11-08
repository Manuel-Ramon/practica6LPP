#NOTA: la tarea en el Rakefile se llama 'TDD' para inicializarla escribir 'rake TDD' en la terminal (situados previamente donde esté dicho fichero)

#NOTA GRAVE: NO me acepta el nombre "EtiquetaNutricional" como nombre de clase en el Código Fuente. He probado con otros nombres que son dos palabras juntas cuyo caracter inicial es en mayúsculas y esos si me los acepta

#1
require 'lib/etiqueta_nutricional'

#2

#La siguiente línea es para indicar un bloque de pruebas TDD que se llama "Etiqueta"
context  Etiqueta do

	#Esto dice que antes de hacer cada una de las pruebas (:each do) debe crearse una instanciación de la clase con estas características
	before :each do
		@label = Etiqueta.new("Galletas",23,11,66,37,10,1)
	end

	#Multipruebas1
	#Si al llamar al método que devuelve el nombre de la etiqueta funciona
	context "Si los getters funcionan" do

		#Prueba spec sobre método obtiene etiqueta producto
		it "La etiqueta/nombre" do
			expect(@label.noun).to eq("Galletas")
		end

		#Prueba spec sobre metodo obtiene grasas producto
		it "Grasas" do
			expect(@label.fat).to eq(23)
		end

		#Prueba spec sobre metodo obtiene grasas saturadas
		it "Grasas Saturadas" do
			expect(@label.sat_fat).to eq(11)
		end

		#Prueba spec sobre método obtiene hidratos carbono
		it "Hidratos de carbono" do
			expect(@label.hidrates).to eq(66)
		end

		#spec azucares
		it "Azucares" do
			expect(@label.sugars).to eq(37)
		end

		#spec proteinas
		it "Proteinas" do 
			expect(@label.proteins).to eq(10)
		end

		#spec sal
		it "Sal" do
			expect(@label.salt).to eq(1)
		end
	end

	context "Si los valores energeticos formateados funcionan" do
		#Prueba spec Valor energetico kJ
		it "Valor energetico kilojulios" do
			expect(@label.kj).to eq("500kJ")
		end
	end
end
