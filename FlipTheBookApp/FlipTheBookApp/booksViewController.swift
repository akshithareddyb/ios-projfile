//
//  booksViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/7/22.
//

import UIKit

class booksViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var book = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayLabel.text = book
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
