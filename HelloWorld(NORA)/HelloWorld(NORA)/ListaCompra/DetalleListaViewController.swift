import UIKit

class DetalleListaViewController: UIViewController {

    @IBOutlet weak var producto: UILabel!
    @IBOutlet weak var cantidad: UILabel!
    
    // Ahora sí recibimos el PRODUCTO entero
    var productoSeleccionado: Producto?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let prod = productoSeleccionado {
            producto.text = prod.nombre
            cantidad.text = "Cantidad: \(prod.cantidad)"
        }
    }
}
