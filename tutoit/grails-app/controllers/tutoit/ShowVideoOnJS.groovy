package tutoit

class ShowVideoOnJS implements Showable{

    private String YOUTUBE_EMBED_LINK = "https://www.youtube.com/embed/"
    private String SHOWING_DIV = "showVideo"

    private String YOUTUBE_THUMBNAIL_LINK = "https://img.youtube.com/vi/"
    private String THUMBNAIL_MEDIUM= "/mqdefault.jpg"

    @Override
    def showVideoOn(Long videoId) {

        def videoInfo = []
        def videoInstance = Video.get(videoId)
        def videoLinkID = extractVideoID(videoInstance.videoLink)

        String embedLink = YOUTUBE_EMBED_LINK + videoLinkID
        String thumbnailLink = YOUTUBE_THUMBNAIL_LINK + videoLinkID + THUMBNAIL_MEDIUM
        String divLink = SHOWING_DIV + videoId

        videoInfo.add(videoInstance.videoName)
        videoInfo.add(embedLink)
        videoInfo.add(divLink)
        videoInfo.add(thumbnailLink)

        return videoInfo
    }

    private extractVideoID(String videoLink) {
        String urlElement = videoLink.takeWhile {it != '='}
        String extractionResult = videoLink.minus(urlElement)

        extractionResult = extractionResult.takeWhile {it != '&'}
        extractionResult = extractVideoID(videoLink)
        return extractionResult.minus("=")
    }
}
