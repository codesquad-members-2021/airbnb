import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
    }
}

private extension LoginViewController {
    private func setupMainView() {
        view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        setupTextField()
    }
    
    private func setupTextField() {
        idTextField.becomeFirstResponder()
        idTextField.addTarget(self, action: #selector(enteredIdTextField), for: .editingDidEndOnExit)
        passwordTextField.addTarget(self, action: #selector(enteredPasswordTextField), for: .editingDidEndOnExit)
    }
}

private extension LoginViewController {
    
    @objc private func enteredIdTextField() {
        idTextField.resignFirstResponder()
        passwordTextField.becomeFirstResponder()
    }
    @objc private func enteredPasswordTextField() {
        //Network 구현 (로그인 요청)
    }
}
