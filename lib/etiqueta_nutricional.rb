require "etiqueta_nutricional/version"

#module EtiquetaNutricional
  #class Error < StandardError; end
  # Your code goes here...

	#Nuestra clase
	#class MierdaGorda 
	class Etiqueta
		attr_reader
		#Constructor
		def initialize (nom,gras,sat,hid,azu,prot,s)
			@nombre = nom
			@grasas = gras
			@saturadas = sat
			@hidratos = hid
			@azucares = azu
			@proteinas = prot
			@sal = s 
		end
		
		#Devuelve el contenido del atributo nombre
		def noun
			#puts "#{@nombre}"
			@nombre
		end

	end
#end
