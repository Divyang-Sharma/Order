//
//  ViewController.swift
//  Order
//
//  Created by cloud on 18/01/22.
//

import UIKit

class loginVC: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }


    @IBAction func login(_ sender: Any) {
       let emailid=email.text ?? ""
        let pass=password.text ?? ""
        if(emailid.count>0 && emailid=="divyang")&&(pass.count>0 && pass=="divyang")
        {
            let objlogin=self.storyboard?.instantiateViewController(withIdentifier: "Logged") as? Logged
            if let objlogin=objlogin{
                objlogin.receivedData = emailid
                self.navigationController?.pushViewController(objlogin, animated: true)
            }
        }
        else{
            print("Incorrect Email/Password")
        }
    }
    
}

extension loginVC : UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text ?? "")
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(textField.text ?? "")
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
    


