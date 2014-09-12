package tutoit

class Commentary {

	Date commentaryDate = new Date()
	String commentaryDescription

	static belongsTo = [video:Video]

    static constraints = {
    	commentaryDescription blank:false, size:1..255
    	commentaryDate editable: false, display: true, format: 'dd/MM/yyyy'
    }
}
