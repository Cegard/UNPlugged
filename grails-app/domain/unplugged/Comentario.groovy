package unplugged

class Comentario {

	def Date fecha
	def String body
	
	def Video video
	def Usuario usuario
	
	static belongsTo = [Usuario, Video]
        
    def Comentario(date, body, user, video){
        this.fecha=date
        this.body=body
        this.usuario=user
        this.video=video
    }
    
    def String toString(){
        
        return body
    }
	
    static constraints = {
    }
}
