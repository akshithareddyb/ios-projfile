//
//  SignUpViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/7/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var emailIdOutlet: UITextField!
    
    @IBOutlet weak var enterpwd: UITextField!
    
    
    @IBOutlet weak var confirmpwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpbtn(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
