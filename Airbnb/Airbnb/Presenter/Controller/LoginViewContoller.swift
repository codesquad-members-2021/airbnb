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
        setupIdTextField()
        setupPasswordTextField()
    }
    
    private func setupIdTextField() {
        idTextField.becomeFirstResponder()
        idTextField.rx.controlEvent([.editingDidEndOnExit])
            .asObservable()
            .subscribe(onNext: { [weak self] _ in
                self?.idTextField.resignFirstResponder()
                self?.passwordTextField.becomeFirstResponder()
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupPasswordTextField(){
        passwordTextField.isSecureTextEntry = true
        passwordTextField.rx.controlEvent([.editingDidEndOnExit])
            .asObservable()
            .subscribe(onNext: { [weak self] _ in
                guard let url = URL(string: Login.post) else { return }
                APIService.post(url, parameter: LoginInfo(id: self!.idTextField.text!, password: self!.passwordTextField.text!))
                    .subscribe(onNext: { [weak self] _ in
                        let tabBarController = self?.storyboard?.instantiateViewController(withIdentifier: "TabBarController")
                        tabBarController?.modalPresentationStyle = .fullScreen
                        self?.present(tabBarController!, animated: true, completion: nil)
                    }, onError: { error in
                        print(error.localizedDescription)
                    })
                    .disposed(by: self!.rx.disposeBag)
            }).disposed(by: rx.disposeBag)
    }
}
