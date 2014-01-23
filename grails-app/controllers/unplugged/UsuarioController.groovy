package unplugged

class UsuarioController {

    def index={
		redirect(action:"login2")
	}
	

    def login2 = {	
	}
	
	
	def logout={
		session.actual=null
		redirect(action:"login2")
	}
	
	
	def login4={
	}
	
	
	def login3={
	}
	
	
	// se sabe si el usuario está o no en la base de datos
	def autenticar={
		
		def Usuario user = Usuario.findByNombreUsuarioAndPassword(params.nombre, params.password)
		
		if (user){
			
			session.actual = user
			preparar.call()
		}
		else{
			
			flash.message = "usuario ${params.nombre} no se encuentra registrado"
			redirect(action:"login4")
		}
	}
	
	
	// esta clausura se encarga de establecer que opciones le permitirá dar a escoger al usuario
	def preparar={
		
		if (session.actual == null)
			autenticar.call()
		
		def roles = [] as Set // se escoge un set, ya que se acomoda y se facilita más su uso
		
		// se capturan los roles del usuario que ingreso en la página
		session.rolesActual = Rol.list().each{persona.id == session.actual.id}
		session.rolesActual.each{println("${it.toString()}")}
		redirect(url:"/video/gjfjhf")
	}
	
}
