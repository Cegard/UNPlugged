package unplugged

class Comentario {

	def Date fecha
	def String path
	
	def Video video
	def Usuario usuario
	
	static belongsTo = [Usuario, Video]
	
    static constraints = {
    }
}
