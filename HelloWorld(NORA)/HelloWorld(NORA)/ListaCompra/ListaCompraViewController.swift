//
//  ListaCompraViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 3/12/25.
//

import UIKit

class ListaCompraViewController: UIViewController {
    
    
    @IBOutlet weak var listaView: UITableView!
    
    // 1. Array de elementos de la compra
    let shopItems = ["Leche", "Pan", "Huevos", "Fruta", "Verduras"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Conectar la tabla con el DataSource
        listaView.dataSource = self
    }
}

// 2. Extensión para implementar UITableViewDataSource
extension ListaCompraViewController: UITableViewDataSource {
    
    // Número de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Número de filas por sección
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    // Configuración de la celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // El identificador de la celda debe coincidir con el definido en el Storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shopItems[indexPath.row]
        return cell
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


