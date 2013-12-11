package unplugged

class Rol {
	
	def enum tipo{
		def String estudiante = "estudiante"
		def String profesor = "profesor"
		def String encargado = "encargado"
	}
	
	def Usuario persona
	def ClaseEvento claseEvento
	
	static belongsTo = [Usuario, ClaseEvento]
	
    static constraints = {
    }
}
