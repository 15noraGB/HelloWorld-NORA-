//
//  AlamoPosts.swift
//  HelloWorld(NORA)
//
//  Created by student on 10/12/25.
//

import UIKit

class AlamoPosts: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var posts: [Post] = []


    @IBOutlet weak var tabla: UITableView!
    let dataSource = PostsDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.dataSource = self
        tabla.delegate = self
        
        fetchPosts()
    }

    func fetchPosts() {
        dataSource.fetchAllPosts { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let posts):
                    self?.posts = posts
                    self?.tabla.reloadData()
                case .failure(let error):
                    print("Error fetching posts: \(error)")
                }
            }
        }
    }

    // MARK: - TableView DataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        let post = posts[indexPath.row]
        cell.textLabel?.text = post.title
        cell.detailTextLabel?.text = post.body
        return cell
    }

}
