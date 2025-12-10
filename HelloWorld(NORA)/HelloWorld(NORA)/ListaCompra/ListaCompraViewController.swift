import UIKit

class ListaCompraViewController: UIViewController {

    @IBOutlet weak var listaView: UITableView!
    
    let shopItems = ["Leche", "Pan", "Huevos", "Fruta", "Verduras"]
    
    // Variable para guardar qué item se seleccionó
    var itemSeleccionado: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listaView.dataSource = self
        listaView.delegate = self
    }
}

// MARK: - Tabla
extension ListaCompraViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shopItems[indexPath.row]
        return cell
    }
    
    // Cuando se toca una fila
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        itemSeleccionado = shopItems[indexPath.row]
        
        // Llamamos al segue
        performSegue(withIdentifier: "detalleSegue", sender: self)
    }
}

// MARK: - Segue → enviar dato al detalle
extension ListaCompraViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleSegue" {
            let destino = segue.destination as! DetalleListaViewController
            destino.nombreProducto = itemSeleccionado
        }
    }
}
