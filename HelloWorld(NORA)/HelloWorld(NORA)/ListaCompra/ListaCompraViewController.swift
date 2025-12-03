//
//  ListaCompraViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 3/12/25.
//

import UIKit

class ListaCompraViewController: UIViewController {
    
    
    @IBOutlet weak var listaView: UITableView!
    
    let shopItems = ["Leche", "Pan", "Huevos", "Fruta", "Verduras"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Conectar la tabla con el DataSource y Delegate
            listaView.dataSource = self
            listaView.delegate = self
        }
    }

// Extensión para UITableViewDataSource y UITableViewDelegate
extension ListaCompraViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shopItems[indexPath.row]
        return cell
    }
    
    // Detectar selección de fila
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemSeleccionado = shopItems[indexPath.row]
        print("Elemento seleccionado: \(itemSeleccionado)")
        
        // Deseleccionamos la fila para que no quede marcada
        tableView.deselectRow(at: indexPath, animated: true)
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


