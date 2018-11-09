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
			@porciones = 0
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

		#IR grasa
		def irgrasa
			@irfat = (@grasas * 100) / 70
		end

		#IR saturadas
		def irsaturada
			@irfat = (@saturadas * 100) / 20
		end

		#IR hidratos
		def irhidrato
			@irhidrato = (@hidratos * 100) / 260
		end

		#IR azucares
		def irazucar
			@irazucar = (@azucares * 100) / 90
		end

		#IR proteinas
		def irproteina
			@irproteina = (@proteinas * 100) / 50
		end

		#IR sal
		def irsal
			@irsal = (@sal * 100) / 6
		end

		#def cambiar_porciones (porciones)
			#@porciones = porciones
		#end
	end
#end
