import UIKit
import RxSwift
import RxCocoa

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
        passwordTextField.isSecureTextEntry = true
        passwordTextField.addTarget(self, action: #selector(enteredPasswordTextField), for: .editingDidEndOnExit)
    }
}

private extension LoginViewController {
    
    @objc private func enteredIdTextField() {
        idTextField.resignFirstResponder()
        passwordTextField.becomeFirstResponder()
    }
    @objc private func enteredPasswordTextField() {
        guard let url = URL(string: Login.post) else {
            return
        }
        APIService.post(url, parameter: LoginInfo(id: idTextField.text!, password: passwordTextField.text!))
            .subscribe(onNext: { [weak self] data in
                let tabBarController = self?.storyboard?.instantiateViewController(identifier: "TabBarController")
                tabBarController?.modalPresentationStyle = .fullScreen
                self?.present(tabBarController!, animated: true, completion: nil)
            }, onError: { error in
                print(error.localizedDescription)
            }).disposed(by: rx.disposeBag)
    }
}
