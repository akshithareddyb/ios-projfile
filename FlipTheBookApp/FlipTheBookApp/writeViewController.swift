//
//  writeViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit

class writeViewController: UIViewController {

    @IBOutlet weak var titleOutlet: UITextField!
    
    @IBOutlet weak var selectimageOutlet: UIButton!
    
    @IBOutlet weak var uploadbtnOutlet: UIButton!
    
    @IBOutlet weak var authorName: UITextField!
    
    @IBOutlet weak var publishBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectCoverImageBtn(_ sender: Any) {
    }
    
    @IBAction func uploadADocument(_ sender: Any) {
    }
    
    @IBAction func publish(_ sender: Any) {
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
