package unplugged

class UsuarioController {

    def index={
		redirect(action:"login2")
	}
	
	
    def login2 = {
		
	}
	
	
	def authenticate={
		
		def Usuario user = Usuario.findByNombreUsuarioAndPassword(params.nombre, params.password)
		
		if (user){
			
			session.actual = user
			def Rol r
			
			Rol.list().each{
				if(it.persona.id == user.id){
					r = it
				}
			}
			
			session.rol = r
			flash.message = "Bienvenido ${user.nombre}"
			redirect(action:"login3")
		}
		else{
			flash.message = "usuario ${params.nombre} no se encuentra registrado"
			redirect(action:"login4")
		}
		
	}
	
    def logout={
        session.actual=null
        redirect(action:"login2")
        
    }
	
    def login4={
        
    }
	
    def login3={
        
    }
	
	def procesarRol={
		
		if (session.rol.rol.equals("encargado") || session.rol.rol.equals("profesor") || 
			session.rol.rol.equals("monitor")){
			
			redirect(url:"/video/iniciarStreaming")
		}else if(session.rol.rol.equals("estudiante")){
			redirect(url:"/video/verStreaming")
		}else{
			redirect(action:"login2")
		}
	}
	
}
