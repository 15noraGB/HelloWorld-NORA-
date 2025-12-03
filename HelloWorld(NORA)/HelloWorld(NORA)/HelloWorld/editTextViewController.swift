//
//  editTextViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 26/11/25.
//

import UIKit

class editTextViewController: UIViewController {
    
    let ResultText = "resultTextSegue"
    
    @IBAction func botonDone(_ sender: Any) {
        
        // Comprobar si el campo está vacío o solo con espacios
                let texto = textFill.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
                
                if texto.isEmpty {
                    // Mostrar alerta
                    let alert = UIAlertController(title: "Campo vacío",
                                                  message: "Por favor, escribe tu nombre antes de continuar.",
                                                  preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    present(alert, animated: true)
                    return
                }
        
        self.performSegue(withIdentifier: ResultText, sender: self)
    }
    
    @IBOutlet weak var texto1: UILabel!
    
    
    @IBOutlet weak var textFill: UITextField!
    @IBAction func botonDONE(_ sender: UIButton) {
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        texto1.text = "Introduce tu nombre"
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
