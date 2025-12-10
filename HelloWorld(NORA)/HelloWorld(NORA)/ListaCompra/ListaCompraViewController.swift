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
    
    // Producto seleccionado de la lista
    var itemSeleccionado: Producto?
    
    // Identificadores de segues
    let Añadir = "añadirProductoSegue"
    let DetalleSegue = "detalleSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaView.dataSource = self
        listaView.delegate = self
        
        // Botón para añadir producto
        let addBarBt = UIBarButtonItem(
            title: String(localized: "Añadir"),
            style: .plain,
            target: self,
            action: #selector(self.addBarBtAction)
        )
        self.navigationItem.rightBarButtonItem = addBarBt
    }
    
    // Acción del botón "Añadir"
    
    @IBAction func addBarBtAction(sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: Añadir, sender: self)
    }
    
    // Preparación para los segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DetalleSegue {
            let destino = segue.destination as! DetalleListaViewController
            destino.productoSeleccionado = itemSeleccionado
        }
        else if segue.identifier == Añadir {
            let destino = segue.destination as! AnadirProdViewController
            destino.delegate = self
        }
    }
}

// MARK: - Delegate de añadir producto
extension ListaCompraViewController: AnadirProdDelegate {
    func didAddProduct(_ producto: Producto) {
        shopItems.append(producto)
        listaView.reloadData()
    }
}

// MARK: - TableView
extension ListaCompraViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shopItems[indexPath.row].nombre
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemSeleccionado = shopItems[indexPath.row]
        performSegue(withIdentifier: DetalleSegue, sender: self)
    }
}
