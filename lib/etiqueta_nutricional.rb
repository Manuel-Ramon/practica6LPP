require "etiqueta_nutricional/version"

#module EtiquetaNutricional
  #class Error < StandardError; end
  # Your code goes here...

	#Nuestra clase 
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

		#Devuelve el contenido en grasas del producto
		def fat
			@grasas
		end

		#Devuelve el contenido de grasas saturadas producto
		def sat_fat
			@saturadas
		end

		#Dev hidratos
		def hidrates
			@hidratos
		end

		#Dev azucares
		def sugars
			@azucares
		end

		#Dev proteinas
		def proteins
			@proteinas
		end

		#Devolver sal
		def salt
			@sal
		end

		#Calc kilojulios
		def kj
			@kilojulios = (@hidratos * 17) + (@proteinas * 17) + (@grasas * 37) + (@sal * 25)
		end

		#Cal kilocalorias
		def kcal
			@kilocalorias = (@hidratos * 4) + (@proteinas * 4) + (@grasas * 9) + (@sal * 6)
		end
	end
#end
