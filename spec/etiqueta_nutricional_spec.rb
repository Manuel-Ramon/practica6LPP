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

	context "Si los valores energeticos funcionan" do
		#Prueba spec Valor energetico kJ
		it "Valor energetico kilojulios" do
			expect(@label.kj).to eq(2168)
		end

		#Prueba spec Valor energetico kcal
		it "Valor energetico kilocalorias" do
			expect(@label.kcal).to eq(517)
		end
	end

	context "Datos IR" do
		#spec IR grasas
		it "Cuanto % de grasa contiene" do
			expect(@label.irgrasa).to eq(32)
		end

		#spec IR saturadas
		it "Cuanto % de saturadas" do
			expect(@label.irsaturada).to eq(55)
		end

		#spec IR hidratos
		it "Cuanto % de hidratos" do
			expect(@label.irhidrato).to eq(25)
		end

		#spec IR azucares
		it "Cuanto % de azucares" do
			expect(@label.irazucar).to eq(41)
		end

		#spec IR proteinas
		it "Cuanto % de proteinas" do
			expect(@label.irproteina).to eq(20)
		end

		#spec IR sal
		it "Cuanto % de sal" do
			expect(@label.irsal).to eq(16)
		end
	end

	context "Porciones" do
		it "Porcion" do
			expect(@label.cambiar_porciones(3)).to eq(3)
		end
	end

	#context "¿Salida formateada?" do
		#Prueba spec etiqueta formateada
		#it "Etiqueta1" do
			#expect(@label.mostrar1).to eq("Informacion Nutricional")
		#end

		#spec nombre formateado
		#it "Etiqueta2" do
			#expect(@label.mostrar2).to eq("Producto: Galletas")
		#end

		#
		#it "Etiqueta3" do
			#expect(@label.mostrar3).to eq("Valor energetico: |512kJ/527kcal|")
		#end
	#end
end 
