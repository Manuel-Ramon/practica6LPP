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
	context "Si los setters funcionan" do

		#Prueba spec sobre método obtiene etiqueta producto
		it "La etiqueta/nombre" do
			expect(@label.noun).to eq("Galletas")
		end

		#Prueba spec sobre metodo obtiene grasas producto
		it "Grasas" do
			expect(@label.fat).to eq(23)
		end

		it "Grasas Saturadas" do
			expect(@label.sat_fat).to(11)
		end
	end
end
