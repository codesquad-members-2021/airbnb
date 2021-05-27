import UIKit

class PriceViewController: UIViewController {
    
    private let viewModel = PriceViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupInfo(of location:String, of date:String) {
        viewModel.setupInfo(of: location, of: date)
    }
}
