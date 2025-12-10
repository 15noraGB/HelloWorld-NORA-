import UIKit

class ListaCompraViewController: UIViewController {

    @IBOutlet weak var listaView: UITableView!
    
    var shopItems: [Producto] = [
        Producto(nombre: "Leche", cantidad: 3),
        Producto(nombre: "Pan", cantidad: 2),
        Producto(nombre: "Huevos", cantidad: 12),
        Producto(nombre: "Fruta", cantidad: 6),
        Producto(nombre: "Verduras", cantidad: 9)
    ]

    // Ahora debe guardar un PRODUCTO entero
    var itemSeleccionado: Producto?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listaView.dataSource = self
        listaView.delegate = self
    }
}

extension ListaCompraViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // MOSTRAR SOLO EL NOMBRE
        cell.textLabel?.text = shopItems[indexPath.row].nombre
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // Guardamos el producto completo
        itemSeleccionado = shopItems[indexPath.row]
        
        performSegue(withIdentifier: "detalleSegue", sender: self)
    }
}

extension ListaCompraViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleSegue" {
            let destino = segue.destination as! DetalleListaViewController
            destino.productoSeleccionado = itemSeleccionado   // PASAMOS EL OBJETO ENTERO
        }
    }
}
