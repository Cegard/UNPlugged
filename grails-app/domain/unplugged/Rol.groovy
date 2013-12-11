package unplugged

class Rol {
	
	def enum Tipo{
		estudiante("estudiante"),
		profesor("profesor"),
		encargado("encargado")
	}
	
	def Tipo rol
	
	def Usuario persona
	def ClaseEvento claseEvento
	
	static belongsTo = [Usuario, ClaseEvento]
	
    static constraints = {
    }
}
