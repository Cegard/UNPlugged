/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package unplugged

/**
 *
 * @author Alexander
 */
class HomeController {
    def Video videoBuscado;
    def Rol rolActual;
    
    def index={
        redirect(action: "home")
    }
    
    def home={}
    
    def authenticate={
		
		def Usuario user = Usuario.findByNombreUsuarioAndPassword(params.nombre, params.password)
		
		if (user){
			
			session.actual = user
			preparar.call()
		}
		else{
			flash.message = "usuario ${params.nombre} no se encuentra registrado"
                        redirect(action:"home")
		}
		
    }
    
    def preparar={
        if (session.actual == null){
            authenticate.call()
        }
        
        def roles = [] as Set // se escoge un set, ya que se acomoda y se facilita más su uso
		
	// se capturan los roles del usuario que ingreso en la página
	/*Rol.list().each{
            if (it.persona.id == session.actual.id)
                roles.add(it)
	}*/

	flash.rolesActual = Rol.find{persona.id == session.actual.id}
        rolActual=flash.rolesActual
	redirect(controller: "video", action:"procesar")
	}
    
    def logged={
        [rolActual:rolActual]
    }
	
    def logout={
        session.actual=null
        redirect(action:"home")
        
    }
    
    def checkLogged={
        if(session.actual==null){
            redirect(action:"home")
        }
        else{
            redirect(action:"logged")
        }
    }
    
    def buscar={
        def Video vid = Video.findByTitulo(params.search)
        
        if(vid){
            videoBuscado = vid
            redirect(action:"results")
            
        }
        else{
            redirect(action:"checkLogged")
        }        
    }
    
    def results= {
        [video: videoBuscado, rol: rolActual]
    }
        
        
	
}

