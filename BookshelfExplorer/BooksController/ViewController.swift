//
//  ViewController.swift
//  BookshelfExplorer
//
//  Created by Vikram Kunwar on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BooksTableV: UITableView!
    
    var books: [Book] = []
    let networkingManager = NetworkingManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchBooks()
       
        
    }
    
    func fetchBooks() {
        networkingManager.fetchBooks { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let books):
                    self?.books = books
                    self?.BooksTableV.reloadData()
                case .failure:
                    let alertController = UIAlertController(title: "Error", message: "Failed to fetch books.", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self?.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return books.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BooksTVC
            let book = books[indexPath.row]
            cell.Booktitle.text = book.volumeInfo.title
            cell.Bookauthor.text = book.volumeInfo.authors.joined(separator: ", ")
            cell.BookPublisher.text = book.volumeInfo.publisher
            cell.Bookdescription.text = book.volumeInfo.description
            return cell
        }
    
}

