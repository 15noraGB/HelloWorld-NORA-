//
//  editTextViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 26/11/25.
//

import UIKit

class editTextViewController: UIViewController {
    
    let ResultText = "resultTextSegue"

    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var textFill: UITextField!
    @IBAction func botonDONE(_ sender: UIButton) {
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        text1.text = "Introduce tu nombre"
        if segue.identifier == ResultText {
            let destino = segue.destination as! resultViewController
            destino.nombre = textFill.text ?? ""
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
