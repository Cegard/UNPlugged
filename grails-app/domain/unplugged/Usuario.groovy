package unplugged

class Usuario {

	def nombre
	def contrasenia
	def nombreUsuario
	
	static hasMany = [videos: Video, comentarios: Comentario]
	
    static constraints = {
		nombreUsuario unique: true
    }
}
