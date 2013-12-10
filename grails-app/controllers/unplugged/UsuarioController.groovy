package unplugged

class UsuarioController {
	
	def index={
		redirect(action:"login")
	}
	
	
        def login = {
		
	}
	
	
	def authenticate={
		
		def Usuario user = Usuario.findByNombreUsuarioAndPassword(params.nombre, params.password)
		
		if (user){
			
			session.user = user
			flash.message = "Bienvenido ${user.nombre}"
			redirect(action:"login3")
		}
		else{
			flash.message = "usuario ${params.nombre} no se encuentra registrado"
			redirect(action:"login4")
		}
		
	}
        def logout={
            session.user=null
            redirect(action:"login2")
            
        }
        def login4={
            
        }
        def login3={
            
        }
	
}
