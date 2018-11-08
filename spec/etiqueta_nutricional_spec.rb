#NOTA: la tarea en el Rakefile se llama 'TDD' para inicializarla escribir 'rake TDD' en la terminal (situados previamente donde esté dicho fichero)

#1
require 'lib/etiqueta_nutricional'

#2

#La siguiente línea es para indicar un bloque de pruebas TDD que se llama "Etiqueta"
context  EtiquetaNutricional do

	#Esto dice que antes de hacer cada una de las pruebas (:each do) debe crearse una instanciación de la clase con estas características
	before :each do
		@label = EtiquetaNutricional.new("Galletas",23,11,66,37,10,1)
	end
end
