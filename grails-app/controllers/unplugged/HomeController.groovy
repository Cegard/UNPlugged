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
class HomeController{
    
    
    def Rol rolActual
    
    def index={
        redirect(action: "home")
    }
    
    def home={}
    
    def cursos={
        [cursos:ClaseEvento.list(), videos: Video.list()]
    }
    
    def Videos ={
        [videos: Video.list()]
    }
    
    def login2 ={
        def Usuario user = Usuario.findByNombreUsuarioAndPassword(chainModel["username"],chainModel["keyword"])
        
        if (user){

                session.actual = user
                preparar.call()
        }
        else{                        
                flash.message = "El Usuario ${chainModel["username"]} no se encuentra registrado"
                redirect(action:"home")
        }
    }
    
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
		def cods = [] as Set
		
		Rol.list().each{
			if(it.persona.id == session.actual.id){
				cods.add(it.id)
			}
        }

	chain(controller:"video", action:"listar", model: [rols: cods])
    }
	
    def logout={
        session.actual=null
        redirect(action:"home")        
    }
    
    def buscarDos={
        def videoList=[] as Set
        def String text = chainModel["text"]
        def String opcion = chainModel["opcion"]
        
        if(opcion=="1"){
           videoList = videoList + Video.list().each{if(it.titulo==text)
			   it
		   } 
        }
        if(opcion=="2"){
            videoList = videoList + Video.list().each{if(it.titulo==text)
				it
			}            
        }
        if(opcion=="3"){
            videoList = videoList + Video.list().each{if(it.ofrecidoPor==text)
				it
			}            
        }
        if(opcion=="4"){
            videoList = videoList + Video.list().each{if(it.lugar==text)
				it
			}            
        }        
        
        if(videoList.getAt(0)!=null){
            chain(action:"results", model:[videos: videoList])
            
        }
        else{
            redirect(action:"home")
        }
    }
    
    def buscar={
        def videoList=[] as Set
        def String opcion = (String)params.Opcion
        if(opcion=="1"){
           videoList = videoList + Video.list().each{if(it.titulo==params.search)
			   it
		   } 
        }
        if(opcion=="2"){
            videoList = videoList + Video.list().each{if(it.titulo==params.search)
				it
			}            
        }
        if(opcion=="3"){
            videoList = videoList + Video.list().each{if(it.ofrecidoPor==params.search)
				it
			}            
        }
        if(opcion=="4"){
            videoList = videoList + Video.list().each{if(it.lugar==params.search)
				it
			}            
        }        
        
        if(videoList.getAt(0)!=null){
            chain(action:"results", model:[videos: videoList])
            
        }
        else{
            redirect(action:"home")
        }        
    }
    
    def results= {
        def videoList = chainModel["videos"]
        [videos: videoList]
    }
        
        
	
}

