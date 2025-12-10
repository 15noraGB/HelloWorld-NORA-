//
//  PostsDataSource.swift
//  HelloWorld(NORA)
//
//  Created by student on 10/12/25.
//

import Foundation
import Alamofire

class PostsDataSource{
    
    func fetchAllPosts(completion: @escaping (Result<[Post], Error>) -> Void){
        let url = "https://jsonplaceholder.typicode.com/posts"
        
        
        
        AF.request(url).responseDecodable(of: [Post].self) { response in
            switch response.result {
            case.success(let posts):
                completion(.success(posts))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
