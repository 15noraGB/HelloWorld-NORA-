//
//  ViewController.swift
//  HelloWorld(NORA)
//
//  Created by student on 26/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    let BirthdaySegue = "birthdaySegue"
    let HelloWorldSegue = "helloWorldSegue"
    let ShopListSegue = "shopListSegue"
    let NetworkSegue = "networkSegue"

    @IBAction func botonCumple(_ sender: UIButton) {
        self.performSegue(withIdentifier: BirthdaySegue, sender: self)
    }

    @IBAction func botonHelloWorld(_ sender: UIButton) {
        self.performSegue(withIdentifier: HelloWorldSegue, sender: self)
    }

    @IBAction func botonLista(_ sender: Any) {
        self.performSegue(withIdentifier: ShopListSegue, sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func botonConexionRed(_ sender: UIButton) {
        self.performSegue(withIdentifier: NetworkSegue, sender: self)
    }
    
}

