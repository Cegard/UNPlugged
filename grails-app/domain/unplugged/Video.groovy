package unplugged

class Video {
	
	def Date fecha
	def lugar
	def titulo
	def ofrecidoPor
	
	def Usuario uploader
	
	static belongsTo = Usuario
	static hasMany = [comentarios: Comentario]
	
    static constraints = {
    }
}
