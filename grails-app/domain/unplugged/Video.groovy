package unplugged

class Video {
	
	def Date fecha
	def String lugar
	def String titulo
	def String ofrecidoPor
	def String path
	
	def Usuario uploader
	
	static belongsTo = Usuario
	static hasMany = [comentarios: Comentario]
	
    static constraints = {
    }
}
