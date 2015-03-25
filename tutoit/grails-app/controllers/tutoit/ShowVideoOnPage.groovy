package tutoit

class ShowVideoOnPage implements Showable{

    private String YOUTUBE_EMBED_LINK = "https://www.youtube.com/embed/"

    @Override
    def showVideoOn(Long videoId) {

        def videoInfo = []
        def videoInstance = Video.get(videoId)
        

		String urlElement = videoLink.takeWhile {it != '='}
		String extractionResult = videoLink.minus(urlElement)
		extractionResult =extractionResult.takeWhile {it != '&'}
		
		def videoLinkID = extractionResult
		
        String embedLink = "https://www.youtube.com/embed" + videoLinkID

        videoInfo.add(videoInstance.videoName)
        videoInfo.add(embedLink)

        return videoInfo
    }

    private extractVideoID(String videoLink, String video) {
        String urlElement = videoLink.takeWhile {it != '='}
        String extractionResult = videoLink.minus(urlElement)

        extractionResult = extractionResult.takeWhile {it != '&'}
		
		extractionResultFinal = "https://www.youtube.com/embed" + extractionResult.minus("=")

        return extractionResultFinal
    }
}