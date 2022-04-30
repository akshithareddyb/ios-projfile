//
//  homeControllerViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit

class homeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  bookCollectionView.dequeueReusableCell(withReuseIdentifier: "bookCollectionViewCell", for: indexPath) as! bookCollectionViewCell
                //assign movies to cell
                cell.assignBook(book1[indexPath.row])
                //return to the cell
                return cell
    }
    
    

   
    @IBOutlet weak var bookCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bookCollectionView.delegate = self
        bookCollectionView.dataSource = self
    }
    
    
    
    @IBAction func searchBtn(_ sender: Any) {
    }
    
    @IBAction func librarybtn(_ sender: Any) {
    }
    
    @IBAction func writeBtn(_ sender: Any) {
    }
    
    @IBAction func ProfileBtn(_ sender: Any) {
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // bookCollectionViewCell.indexPath = collectionView.assignBook(book1[indexPath.row])
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "viewSegue" {
            let destination = segue.destination as! ViewController
            let cell = sender as! bookCollectionViewCell
           // let indexPath = self.collectionView?.indexPath(cell)
            let indexPath = bookCollectionView.indexPath(for: cell)
            //let selectedData = myArray[(indexPath?.row)!]
            let story = book1[(indexPath?.row)!]
            let destVC = segue.destination as! ViewController
            destVC.dimage = story.image
        }
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
