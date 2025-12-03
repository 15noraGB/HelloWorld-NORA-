//
//  resultViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 3/12/25.
//

import UIKit

class resultViewController: UIViewController {
    
    @IBOutlet weak var texto1: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    var nombre: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let nombre = nombre {
            texto1.text = "Holis \(nombre)! Bienvenido a mi app"
        } else {
            texto1.text = "Holis! Bienvenido a mi app"
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
