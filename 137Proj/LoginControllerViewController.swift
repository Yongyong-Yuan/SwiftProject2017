//
//  LoginControllerViewController.swift
//  137Proj
//
//  Created by yongyong yuan on 2017/11/8.
//  Copyright © 2017年 ryan. All rights reserved.
//

import UIKit

class LoginControllerViewController: UIViewController {
    
    let IDUSER: String = "000";
    let PASS:String = "111";

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var loginUserID: UITextField!
    @IBOutlet weak var loginUserPassword: UITextField!
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        let userID = loginUserID.text!
        let userPass = loginUserPassword.text!
        if(userID == IDUSER && userPass == PASS){
            self.performSegue(withIdentifier: "loginToMain", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
    

}
