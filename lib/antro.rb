#NOTA1: LAS 3 COSAS A CALCULAR (IMC, %GRASA Y RCC) SERÁN 3 MÉTODOS DE ESTA CLASE
#NOTA2: SE DEBEN RECIBIR TODOS LOS DATOS POSIBLES EN LA INSTANCIACIÓN DE LA CLASE
#ESO INCLUYE QUE LAS VARIAS MEDIDAS DE CINTURA Y PLIEGUES DEBEN ESTAR CONTENIDAS
#EN ARRAYS PARA GUARDARLAS COMO ATRIBUTOS
#NOTA3: PUEDO AHORRARME CIERTOS DATOS POR EJEMPLO NO PONER EL 'SEXO' EN LA CLASE
#SINO QUE SE PASA EL VALOR EN LA PRUEBAS Y JUNTO A ELLO DEVUELVE EL TEXTO
#CLASIFICATORIO CUANDO SE HAGAN
#NOTA4: ME PARECE QUE AUNQUE HAGA LOS MÉTODOS AQUÍ CREO QUE SE DEBEN HACER COMO
#PRUEBAS ??????
#NOTA5: RESULTA QUE PARA CALCULAR EL 'RCC' SÓLO NECESITAMOS SABER LAS MEDIDAS
#EN CENTÍMETROS TANTO DE LA CINTURA COMO DE LA CADERA. DEBEREMOS HACER LA 
#MEDIA DE CADA UNA DE ELLAS Y LUEGO HACER LA RELACIÓN DE LA CINTURA ENTRE LA 
#CADERA


#Clase de los datos antropométricos
class Antro

	#Alternativa a definir los getters
	attr_reader

	def initialize (peso, talla, edad, sexo, cintura, cadera)
		@peso = peso
		@talla = talla
		@edad = edad
		@sexo = sexo
		@cintura = cintura
		@cadera = cadera
	end

	#Método que devuelve el IMC.
	#No hace falta escribir el '@imc' en 'attr_reader' porque
	#esta función está actuando como un 'getter'
	def imc
		@imc = @peso / (@talla * @talla)

	end

	#Método que muestra el índice de obesidad según IMC
	def indice_imc

		if @imc != nil

			if @imc < 18.5
				puts "Bajo peso"
			elsif @imc >= 18.5 && @imc <= 24.9
				puts "Adecuado"
			elsif @imc >= 25.0 && @imc <= 29.9
				puts "Sobrepeso" 
			elsif @imc >= 30.0 && @imc <= 34.9
				puts "Obesidad grado 1"
			elsif @imc >= 35.0 && @imc <= 39.9 
				puts "Obesidad grado 2"
			elsif @imc > 40
				puts "Obesidad grado 2"
			end

		else
			puts "IMC no calculado aun"
		end

	end

	#Cálculo del porcentaje de grasa 
	def por_gras
		#Como puede pasar que el IMC no se haya calculado aún
		#compruebo con un condicional si su valor no es nulo (nil)
		if @imc != nil
			@g = 1.2 * @imc + 0.23 * @edad - 10.8 * @sexo - 5.4
		else
			puts "IMC no calculado aun"
		end
	end

	#
	def media_cintura
		@mcin = (@cintura[0] + @cintura[1] + @cintura[2]) / 3
	end

	#
	def media_cadera
		@mcad = (@cadera[0] + @cadera[1] + @cadera[2]) / 3
	end

	#Cálculo del RCC
	def rcc
		if @mcin == nil|| @mcad == nil
			puts "Media Cintura y Media Cadera no calculados aun"
		else
			@rcc = @mcin / @mcad
		end 
	end

	#Método que muestra el tipo de riesgo según hombre o mujer
	def indice_rcc

		if @rcc != nil

			case @sexo
			when 0 #Mujeres
				if @rcc >= 0.72 && @rcc <= 0.75
					puts "Riesto Bajo"
				elsif @rcc >= 0.78 && @rcc <= 0.82
					puts "Riesgo Moderado"
				elsif @rcc > 0.82
					puts "Riesgo Alto"
				end
			when 1 #Hombres
				if @rcc >= 0.83 && @rcc <= 0.88
					puts "Riesto Bajo"
				elsif @rcc >= 0.88 && @rcc <= 0.95
					puts "Riesgo Moderado"
				elsif @rcc >= 0.95 && @rcc <= 1.01
					puts "Riesgo Alto"
				elsif @rcc > 1.01
					puts "Riesgo Muy Alto"
				end
			end

		else
			puts "RCC no calculado aun" 
		end

	end
end
