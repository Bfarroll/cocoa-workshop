

import UIKit
import CoreLocation

class ViewController: UIViewController {

    
    let locationManager = CLLocationManager()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
    }

    

}

extension ViewController: CLLocationManagerDelegate {


    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let newLocation = locations.last
        if let newLocation = newLocation {
        print(newLocation)
        
        }
        
        
        
    }


}
