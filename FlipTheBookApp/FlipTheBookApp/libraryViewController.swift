//
//  libraryViewController.swift
//  FlipTheBookApp
//
//  Created by student on 4/4/22.
//

import UIKit

class books{
    var imageName:String?
    var bookName:String?
    init(imageName: String, bookName: String){
            self.imageName = imageName
            self.bookName = bookName
        }
}
class libraryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
                var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
                
                //Assign the data to the cell.
                cell.imageView?.image = UIImage(named: booksArray[indexPath.row].imageName!)
                cell.imageView?.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
                cell.textLabel?.text = booksArray[indexPath.row].bookName
                //return cell
                return cell
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    //creating an books array
    var booksArray = [books]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
                tableViewOutlet.delegate = self
                tableViewOutlet.dataSource = self
                tableViewOutlet.rowHeight = 75.0
                let book1 = books(imageName: "thesecret", bookName: "The Secret")
                booksArray.append(book1)
                
                let book2 = books(imageName: "howtowinfriends", bookName: "How to Win Friends")
                booksArray.append(book2)
                
                let book3 = books(imageName: "thinkandgrowrich", bookName: "Think and Grow Rich")
                booksArray.append(book3)
                
                let book4 = books(imageName: "richdadpoordad", bookName: "Rich Dad Poor Dad")
                booksArray.append(book4)
                
                let book5 = books(imageName: "wingsoffire", bookName: "Wings Of Fire")
                booksArray.append(book5)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBAction func clearAllBtn(_ sender: Any) {
    }
}
