import UIKit
import RxSwift
import RxCocoa

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    private lazy var loginView: LogInView = {
        let login = LogInView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height*0.5))
        return login
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
    }
}

private extension LoginViewController {
    private func setupMainView() {
        view.backgroundColor = UIColor.white
        setupIdTextField()
        setupPasswordTextField()
        setupLoginButton()
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
                APIService.post(url, parameter: LoginInfo(userId: self?.idTextField.text ?? "", password: self?.passwordTextField.text ?? ""))
                    .subscribe(onNext: { [weak self] data in
                        self?.view.subviews.forEach {
                            $0.removeFromSuperview()
                        }
                        self?.view.addSubview(self?.loginView ?? UIView())
                    }, onError: { error in
                        print(error.localizedDescription)
                    })
                    .disposed(by: self!.rx.disposeBag)
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupLoginButton() {
        logInButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                guard let url = URL(string: Login.post) else { return }
                APIService.post(url, parameter: LoginInfo(userId: self?.idTextField.text ?? "", password: self?.passwordTextField.text ?? ""))
                    .subscribe(onNext: { [weak self] _ in
                        self?.view.subviews.forEach {
                            $0.removeFromSuperview()
                        }
                        self?.view.addSubview(self!.loginView)
                    }, onError: { error in
                        print(error.localizedDescription)
                    })
                    .disposed(by: self?.rx.disposeBag ?? DisposeBag())
            }).disposed(by: rx.disposeBag)
    }
}
