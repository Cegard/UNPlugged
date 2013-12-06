package unplugged

class Rol {
	
	def String tipo
	
	def Usuario persona
	def ClaseEvento claseEvento
	
	static belongsTo = [Usuario, ClaseEvento]
	
    static constraints = {
    }
}
