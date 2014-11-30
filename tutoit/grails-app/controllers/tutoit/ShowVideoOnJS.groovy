package tutoit

class ShowVideoOnJS implements Showable{

    private static String YOUTUBE_EMBED_LINK = "http://www.youtube.com/embed/"
    private static String YOUTUBE_DEFAUT_LINK = "http://www.youtube.com/watch?v="
    private static String YOUTUBE_SEC_LINK = "https://www.youtube.com/watch?v="
    private static String SHOWING_DIV = "showVideo"

    @Override
    def showVideoOn(Long videoId) {
        def videoInfo = []
        def videoInstance = Video.get(videoId)

        String embedLink = videoInstance.videoLink.minus(YOUTUBE_DEFAUT_LINK)
        embedLink = videoInstance.videoLink.minus(YOUTUBE_SEC_LINK)
        embedLink = YOUTUBE_EMBED_LINK + embedLink

        String divLink = SHOWING_DIV + videoId

        videoInfo.add(videoInstance.videoName)
        videoInfo.add(embedLink)
        videoInfo.add(divLink)

        return videoInfo
    }
}
