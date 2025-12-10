//
//  AnadirProdViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 10/12/25.
//

import UIKit

protocol AnadirProdDelegate: AnyObject {
    func didAddProduct(_ producto: Producto)
}

class AnadirProdViewController: UIViewController {
    
    @IBOutlet weak var textoProducto: UITextField!
    @IBOutlet weak var textoCant: UITextField!
    
    weak var delegate: AnadirProdDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func botonSAVE(_ sender: UIButton) {
        guard let nombre = textoProducto.text, !nombre.isEmpty,
              let cantidadTxt = textoCant.text, !cantidadTxt.isEmpty,
              let cantidad = Int(cantidadTxt) else {
            
            // Mostrar alerta de error
            let alert = UIAlertController(
                title: "Error",
                message: "Por favor, completa todos los campos correctamente.",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        
        let nuevo = Producto(nombre: nombre, cantidad: cantidad)
        delegate?.didAddProduct(nuevo)
        dismiss(animated: true)
    }

    
        

}
