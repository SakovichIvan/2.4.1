import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextFieldUser: UITextField!
    @IBOutlet weak var TextFieldPass: UITextField!
    
    let UserPass = UserAndPass(user: "user", pass: "12345")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ForgotPassButtonPressed() {
        showAlert(message: "User - \(UserPass.user)", title: "Your username")
    }
    
    @IBAction func ForgotUserButtonPressed() {
        showAlert(message: "Password - \(UserPass.pass)", title: "Your pass")
    }
    
    
    private func showAlert(message: String, title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { action in }))
        
        present(alert, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let WelcomeView = segue.destination as! WelcomeViewController
        
        WelcomeView.WelcomeLabelTransfer = TextFieldUser.text
    }
    
    
    @IBAction func LogInPressed() {
        if TextFieldUser.text != UserPass.user || TextFieldPass.text != UserPass.pass {
            showAlert(message: "Your password or user is incorrect", title: "Wrong")
        }
    }
}

