import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var WelcomeLabel: UILabel!
    var WelcomeLabelTransfer: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WelcomeLabel.text = "Welcome, " + WelcomeLabelTransfer + " ✋"
        
    }
    @IBAction func LogOutButtonPressed() {
        dismiss(animated: true)
    }
    
}
