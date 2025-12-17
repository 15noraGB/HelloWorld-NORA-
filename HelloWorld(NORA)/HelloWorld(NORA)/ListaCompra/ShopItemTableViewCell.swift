//
//  ShopItemTableViewCell.swift
//  HelloWorld(NORA)
//
//  Created by student on 17/12/25.
//

import UIKit

class ShopItemTableViewCell: UITableViewCell {


    
    @IBOutlet weak var nombreLabel: UILabel!
    
    @IBOutlet weak var cantidadLabel: UILabel!
    
    func configurar(producto: Producto) {
        nombreLabel.text = producto.nombre
        cantidadLabel.text = "Cantidad: \(producto.cantidad)"
    }
}
