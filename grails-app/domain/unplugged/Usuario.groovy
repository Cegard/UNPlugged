package unplugged

class Usuario {

	def String nombre
	def String password
	def String nombreUsuario
	
	static hasMany = [videos: Video, comentarios: Comentario]
	
    static constraints = {
		nombreUsuario unique: true
    }
	
	def String toString(){
		"${this.nombre}"
	}
}
