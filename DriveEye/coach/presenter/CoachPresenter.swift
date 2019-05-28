
import Foundation

class CoachPresenter  : NSObject{
    var coachModel = CoachModelImp()
    var delegate : CoachViewProtocol?
    func getAllCoach()  {
        coachModel.getUsers(complent: {(r,i) in
            self.delegate?.displayData(coaches: i)
            
        })
    }
  
    init(coachModel:CoachModelImp){
        self.coachModel = coachModel
    }
    
    func attachView(view:CoachViewProtocol){
        delegate = view
    }
  

}
protocol CoachViewProtocol: NSObjectProtocol {
    func displayData(coaches : [Coach])
}


