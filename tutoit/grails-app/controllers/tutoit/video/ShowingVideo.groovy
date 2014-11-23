package tutoit.video

/**
 * Created by paulo on 11/22/14.
 */
class ShowingVideo {

    private static ON_JS = 1
    private static ON_PAGE = 2

    Showable showable

    def showVideo(videoId, strategy){
        showable = showingType(strategy)
        showable.showVideoOn()
    }

    private showingType(strategy) {
        def showStrategy
        switch (strategy){
            case ON_JS:
                showStrategy = new ShowVideoOnJS()
            case ON_PAGE:
                showStrategy = new ShowVideoOnPage()
            default:
                showStrategy = null
        }
        return showStrategy
    }
}
