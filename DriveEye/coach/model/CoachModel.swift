import Foundation
struct CoachModel{
    private var _title :  String = ""
    private var _describtion : String = ""
    var title : String{
        set(newValue){
            _title = newValue
        }
        get{
            return _title
        }
    }
    var describtion : String{
        set(newValue){
            _describtion =  newValue
        }
        get{
            return _describtion
        }
    }
}
