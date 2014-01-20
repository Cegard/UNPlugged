package unplugged

class VideoController {

    def fme = {
		
    }
	
    def bigv = {
		
    }
	
    def iniciarStreaming = {
    }
	
	
    def verStreaming = {
    }
	
    def verVideo = { 
    }
	
    def procesar = {
		
		def codigosProfesorEncargado = [] as Set // Almacenará los códigos de las clases o eventos
												 // en las que el usuario tiene rol de profesor o encargado.
		
		def codigosEstudiante = [] as Set // Almacenará los códigos de las clases donde el usuario tenga rol
										  // de estudiante.
		
		/*flash.rolesActual.each {
			
			def rol = (Rol) it
			
			if (rol.rol.equals("profesor") || rol.rol.equals("encargado"))
				codigosProfesorEncargado.add(rol.claseEvento.codigo)
			else
				codigosEstudiante.add(rol.claseEvento.codigo)
		}*/
                def Rol rol = flash.rolesActual
                if(rol.rol.equals("profesor") || rol.rol.equals("encargado")){
                    codigosProfesorEncargado.add(rol.claseEvento.codigo)
                }
                else{
                    codigosEstudiante.add(rol.claseEvento.codigo)
                }
        
		flash.paraTransmitir = codigosProfesorEncargado
		flash.paraVer = codigosEstudiante
	}
	
	
	/* 
	 * según los roles activos del usuario, se le permitirá iniciar streamings,
	 * el ver transmiciones en vivo es independiente del rol del usuario, pero es necesario
	 * que exista al menos una transmición en proceso,
	 * todos pueden ver los vídeos almacenados. 
	 */
	def listar = {
		
		def toSee = [] as Set
		def toStream = [] as Set
		def streamClases = [] as Set
		
		if (session.actual){

			def paraTransmitir = flash.paraTransmitir
			def paraVer = flash.paraVer
			
			/* obteniendo la lista de las materias y eventos en los cuales el usuario tiene permiso
			 * de iniciar transmiciones*/
			toStream = ClaseEvento.list().each{it.codigo in paraTransmitir} //?

			/*obteniendo la lista de vídeos de las clases a las cuales pertenece el usuario que están transmitiendo*/
			streamClases = Video.list().each{it.claseEvento.codigo in paraVer}
		}
		
		/*añadiendo los eventos tranasmitiendo en vivo*/
		toSee = streamClases + Video.list().each{(it.claseEvento.tipo == "evento") && (it.enVivo == true)}
		
		/*todos los vídeos almacenados en el servidor que no estén siendo transmitidos en vivo*/
		flash.videos = Video.list().each{it.enVivo == false}
		
		flash.toStream = toStream
		flash.toSee = toSee
	}
	
	
	def procesarSolicitud = {
		
		def Video video = Video.findById(params.v_id)
		
		if (video == null)
			redirect(url:"/usuario/preparar")
		
		def codCE 
		def codUp
		
		ClaseEvento.list().each{
			if (it.id == video.claseEvento.id)
				codCE = it.codigo
		}
		
		Usuario.list().each{
			if (it.id == video.uploader.id)
				codUp = it.codigo
		}
		
		flash.tittle = video.titulo
		flash.path = "localhost/vod/mp4:${codCE}_${codUp}_${video.titulo}.f4v"
		
		if (!video.enVivo)
			redirect(action:"verVideo")
		else
			redirect(action:"verStreaming")
	}
}
