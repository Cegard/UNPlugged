package unplugged

class VideoController {
	
	def bigv = {
		
	}
	
	def fme = {
		
	}
	
    def iniciarStreaming = {
		
	}
	
	def verStreaming = {
		
	}
	
	def verVideo = { 
		
		
	}
	
	def listarVideos = {
		flash.videos = Video.list()
	}
	
	def cargarVideo = {
		
		Video video = Video.findById(params.v_id)
		
		if (!video)
			redirect(action:"listarVideos")
		
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
		redirect(action:"verVideo")
	}
}
