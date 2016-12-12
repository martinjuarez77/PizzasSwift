//
//  ViewController.swift
//  PizzasSwift
//
//  Created by Martin Juarez on 11/11/16.
//  Copyright © 2016 Martin Juarez Acheritobehere. All rights reserved.
//

import UIKit

class FinPedidoController: UIViewController {
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    
    @IBOutlet weak var tamanioLabel: UILabel!
    
    @IBOutlet weak var masaLabel: UILabel!
    
    @IBOutlet weak var quesoLabel: UILabel!
    
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true; // ocultamos el boton "volver"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tamanioLabel.text = self.tamanio
        self.masaLabel.text = self.masa
        self.quesoLabel.text = self.queso
        self.ingredientesLabel.text = self.ingredientes
    }
}

