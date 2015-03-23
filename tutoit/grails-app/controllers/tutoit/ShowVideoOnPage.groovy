package tutoit

class ShowVideoOnPage implements Showable{

    private String YOUTUBE_EMBED_LINK = "https://www.youtube.com/embed/"

    @Override
    def showVideoOn(Long videoId) {

        def videoInfo = []
        def videoInstance = Video.get(videoId)
        def videoLinkID = extractVideoID(videoInstance.videoLink)

        String embedLink = YOUTUBE_EMBED_LINK + videoLinkID

        videoInfo.add(videoInstance.videoName)
        videoInfo.add(embedLink)

        return videoInfo
    }

    private extractVideoID(String videoLink, String video) {
        String urlElement = videoLink.takeWhile {it != '='}
        String extractionResult = videoLink.minus(urlElement)

        extractionResult = extractionResult.takeWhile {it != '&'}

        return extractionResult.minus("=")
    }
}