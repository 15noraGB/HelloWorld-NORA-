//
//  birthdayViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 26/11/25.
//

import UIKit

class birthdayViewController: UIViewController {
    
    
    @IBOutlet weak var fotoTarta: UIImageView!
    @IBOutlet weak var texto1: UILabel!
    @IBOutlet weak var texto2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texto1.text = "Felicidades!"
        texto2.text = "Disfruta del día"
        let backgroundImage = UIImageView(frame: view.bounds)
           backgroundImage.image = UIImage(named: "fondoCumple")   // tu imagen en Assets
           backgroundImage.contentMode = .scaleAspectFill
           backgroundImage.clipsToBounds = true

           view.insertSubview(backgroundImage, at: 0)

        // Do any additional setup after loading the view.
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
