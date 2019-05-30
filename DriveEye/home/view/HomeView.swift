
import UIKit
import CoreLocation


class HomeView: UIViewController,CLLocationManagerDelegate  , HomeViewProtocol {
   
    @IBOutlet weak var btnStartTrip: UIButton!
    
    var trip : Trip!
    var presenter : HomePresenter! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter =  HomePresenter()
        trip = Trip()
        presenter.attachView(view: self)
    }

    @IBAction func startTribAction(_ sender: UIButton) {
        switch btnStartTrip.currentTitle! {
        case "start trip":
            btnStartTrip.setTitle("end trip", for: .normal)
        case "end trip":
            btnStartTrip.setTitle("start trip", for: .normal)
        default:
            break
        }
        presenter.getCurrentLoation()
    }
    
    func setStartPoint(_ startpoint: String) {
        trip.startPoint=startpoint
    }
    
    func setEndPoint(_ endpoint: String) {
        trip.endPoint=endpoint
    }
}
