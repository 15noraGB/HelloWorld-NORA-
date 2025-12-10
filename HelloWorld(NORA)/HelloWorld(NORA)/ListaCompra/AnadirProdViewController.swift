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
        guard let nombre = textoProducto.text,
              let cantidadTxt = textoCant.text,
              let cantidad = Int(cantidadTxt),
              !nombre.isEmpty else { return }
        
        let nuevo = Producto(nombre: nombre, cantidad: cantidad)
        
        delegate?.didAddProduct(nuevo)
        dismiss(animated: true) // En vez de popViewController
    }

    
        

}
