//
//  loginSignupViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit
import FirebaseDatabase

class loginSignupViewController: UIViewController {

    @IBOutlet weak var usernameOutlet: UITextField!
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    @IBOutlet weak var homeButton: UIButton!
    
    var email = ""
    var pwd = ""
    
    var username :  [String] = []
    var profiles = NSDictionary()
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        homeButton.isEnabled = false
        homeButton.isHidden = true
        fetchData()
    }
    
    
    func fetchData(){
        //create reference for Database.
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value) { snapshot in
            self.profiles = snapshot.value as! NSDictionary //whole
            self.username = self.profiles.allKeys as! [String] //only the keys
            //reload the data
        
            
            //print(self.profiles)
        }
        
    }
    
    
    @IBAction func submitBtn(_ sender: Any) {
        email = "\(usernameOutlet.text!)"
       
        pwd = "\(passwordOutlet.text!)"
      
        for(key,value) in self.profiles{
            
            if(key as! String == "Users"){
                for (key1 , value1) in value as! [String:Any]{
                    let k = key1 + "@gmail.com"
                    if(k == email) {
                        for (key2, value2) in value1 as! [String:Any]{
                                if(key2 == "password" && value2 as! String == pwd){
                                    
                                    homeButton.isEnabled = true
                                    homeButton.isHidden = false
                                }
                            else{
                                labelOutlet.text = "passwords didnot match"
                            }
                        }
                    }
                    else{
                        labelOutlet.text = "Email didnot match"
                    }
                }
            }
        }
    }
        
    
    @IBAction func SignUpBtn(_ sender: Any) {
    }
    
    

}
