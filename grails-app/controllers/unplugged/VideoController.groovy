package unplugged

class VideoController {
    
    def boolean ableTo
    def ClaseEvento cEvent
    def Video videoActual
    def Videos ={
        redirect(controller:"home", action:"Videos")
        
    }
    def cursos ={
        redirect(controller:"home", action:"cursos")
    }
    def authenticate={
        chain(controller:"home", action:"login2", model:[username:params.nombre, keyword:params.password])
    }
    
    def home={
        redirect(controller:"home", action:"home")
    }
    
    def fme = {
		
    }
	
    def bigv = {
		
    }
	
    def iniciarStreaming = {
        if ((session.actual == null) || (!ableTo)){
			redirect(url:"/home/home")
		}
		
		cEvent = ClaseEvento.find{id == params.ce_id}
    }
	
	
    def verStreaming = {
    }
	
    def verVideo = { 
    def comentarios = [] as Set
  
    comentarios = Comentario.list().each {it.video==videoActual}
    [videos:videoActual, comentarios:comentarios]
    
    }	
	/* 
	 * según los roles activos del usuario, se le permitirá iniciar streamings,
	 * el ver transmiciones en vivo es independiente del rol del usuario, pero es necesario
	 * que exista al menos una transmición en proceso,
	 * todos pueden ver los vídeos almacenados. 
	 */
    def listar = {
        ableTo = false
		
		// se capturan los parametros
		def roles = [] as Set
		roles = roles + chainModel["rols"]
		
		// si el usuario tiene privilegios para iniciar streamings mostrarlas como 
		// links y para que pueda iniciar streamings de esta
		
		def toStreamC = [] as Set  // almacenará los ids de las clases o eventos
								   // de los cuales el usuario puede hacer transmisiones
		
		def toSeeV = [] as Set
		def toSeeC = [] as Set  // almacenará los códigos tanto eventos como clases
							    // que están transmitiendo en vivo
		
		def offline = [] as Set  // almacenará los códigos de los vídeos de la videoteca
		
		
		roles.each{
			
			def s = it
			def Rol r = Rol.find{id == s}
			
			if (r.rol == "profesor" || r.rol == "encargado"){
				toStreamC.add(r.claseEvento)
				ableTo = true
			}
			else{
				toSeeC.add(r.claseEvento.id)
			}
		}
		Video.list().each{
			if (it.enVivo == true){
				if (it.claseEvento.tipo == "evento"){
					toSeeV.add(it)
				}
				else{
					if (it.claseEvento.id in toSeeC)
						toSeeV.add(it)
				}
			}
			else
				offline.add(it)
		}
		
		[toSee: toSeeV, toStream: toStreamC, videos: offline, rols: roles]            
    }
    
    def procesarSolicitud = {
		
		def Video video = Video.findById(params.v_id)
                videoActual = video
		
		if (video == null)
			redirect(url:"/usuario/preparar")
		
		def codCE 
		def codUp
		
		ClaseEvento.list().each{
			if (it.id == video.claseEvento.id){
				codCE = it.codigo
                        }
		}
		
		Usuario.list().each{
			if (it.id == video.uploader.id)
				codUp = it.codigo
		}
		
		
		flash.path = "10.203.74.189/vod/mp4:${codCE}_${codUp}_${video.titulo}.f4v"
		
		if (!video.enVivo)
			redirect(action:"verVideo")
		else
			redirect(action:"verStreaming")
    }
        
    def logout={
        redirect(controller:"home",action:"logout")        
    }
    
    def buscar={
        def String text = (String)params.search
        def String opcion= (String)params.Opcion
        chain(controller:"home", action:"buscarDos",model:[text:text,opcion:opcion])
    }
    def comentar={
        def String comentarios = (String) params.comentarios
        def Comentario coment = new Comentario(new Date(), comentarios, session.actual, videoActual)
        coment.save()   
        redirect(action:"verVideo")
    }
    
    def salvarStream={
        def Video vid = new Video()
        vid.enVivo=true
        vid.fecha=new Date()
        vid.uploader=session.actual
        vid.titulo=params.titulo
        vid.lugar=params.lugar
        vid.ofrecidoPor=params.autor
        vid.claseEvento = cEvent
        vid.save();
        redirect(controller:"home", action:"home")
    }
}
