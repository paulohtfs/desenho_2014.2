package tutoit

class ShowingVideo {

    private Showable showable

    public static ON_JS = 1
    public static ON_PAGE = 2

    def showVideo(Long videoId,int strategy){

        this.showable = showingType(strategy)
        def result = showable.showVideoOn(videoId)
        return result
    }

    private Showable showingType(int strategy) {

        Showable showStrategy

        switch (strategy){
            case ON_JS:
                showStrategy = new ShowVideoOnJS()
                break
            case ON_PAGE:
                showStrategy = new ShowVideoOnPage()
                break
        }

        return showStrategy
    }
}
