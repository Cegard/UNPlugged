package unplugged

class Rol {
	
	def String rol
	
	def Usuario persona
	def ClaseEvento claseEvento
	
	static belongsTo = [Usuario, ClaseEvento]
    static constraints = {
    }
	
	def String toString(){
		"${this.rol}"
	}
}
