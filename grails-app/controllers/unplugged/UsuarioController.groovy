package unplugged

class UsuarioController {
	
	Usuario actual
        def index={
		redirect(action:"login2")
	}
	
	
        def login2 = {
		
	}
	
	
	def authenticate={
		
		def Usuario user = Usuario.findByNombreUsuarioAndPassword(params.nombre, params.password)
		
		if (user){
			
			actual = user
			flash.message = "Bienvenido ${user.nombre}"
			redirect(url:"/usuario/login3")
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
