#NOTA: la tarea en el Rakefile se llama 'TDD' para inicializarla escribir 'rake TDD' en la terminal (situados previamente donde esté dicho fichero)

#1
require 'lib/etiqueta_nutricional'

#2

#Llamada al constructor (instanciación de clase)
context  Etiqueta do
	label = Etiqueta.new("Galletas",23,11,66,37,10,1)
end
