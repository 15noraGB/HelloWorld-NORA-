import UIKit

class DetalleListaViewController: UIViewController {

    @IBOutlet weak var producto: UILabel!
    
    // Variable donde llegará el producto seleccionado
    var nombreProducto: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        producto.text = nombreProducto
    }
}
