package unplugged

class Video {
	
	def Date fecha
	def String lugar
	def String titulo
	def String ofrecidoPor
        def String path
	def boolean enVivo
	
	def Usuario uploader
	def ClaseEvento claseEvento
	
	static belongsTo = [Usuario, ClaseEvento]
	static hasMany = [comentarios: Comentario]
	
    static constraints = {
    }
}
