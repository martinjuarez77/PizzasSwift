//
//  ConfirmacionPedidoController.swift
//  PizzasSwift
//
//  Created by Martin Juarez on 10/12/16.
//  Copyright © 2016 Martin Juarez Acheritobehere. All rights reserved.
//

import UIKit

class ConfirmacionPedidoController: UIViewController {

    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente : String = ""
    
    
    @IBOutlet weak var tamanioLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // mostramos los datos del pedido
        self.tamanioLabel.text = "Tamaño: " + self.tamanio
        self.masaLabel.text = "Tipo masa: " + self.masa
        self.quesoLabel.text = "Tipo queso: " + self.queso
        self.ingredientesLabel.text = "Ingredientes:    " + self.ingrediente
    }

}
