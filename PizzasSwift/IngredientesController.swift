//
//  ViewController.swift
//  PizzasSwift
//
//  Created by Martin Juarez on 11/11/16.
//  Copyright © 2016 Martin Juarez Acheritobehere. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController{
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente : String = ""
    var cuentaIngredientes = 0
    
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pinia: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var atun: UISwitch!
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // cadena para concatenar ingredientes seleccionados
        var ingredientes : String = ""
        
        cuentaIngredientes = 0
        if (self.salchicha.isOn) {
            ingredientes += "salchicha "
            cuentaIngredientes += 1
        }
        if (self.cebolla.isOn) {
            ingredientes += "cebolla "
            cuentaIngredientes += 1
        }
        if (self.aceituna.isOn) {
            ingredientes += "aceituna "
            cuentaIngredientes += 1
        }
        if (self.pimiento.isOn) {
            ingredientes += "pimiento "
            cuentaIngredientes += 1
        }
        if (self.pinia.isOn) {
            ingredientes += "piña "
            cuentaIngredientes += 1
        }
        if (self.anchoa.isOn) {
            ingredientes += "anchoa "
            cuentaIngredientes += 1
        }
        if (self.atun.isOn) {
            ingredientes += "atun "
            cuentaIngredientes += 1
        }
        if (self.jamon.isOn) {
            ingredientes += "jamon "
            cuentaIngredientes += 1
        }
        if (self.pavo.isOn) {
            ingredientes += "pavo "
            cuentaIngredientes += 1
        }
        if (self.pepperoni.isOn) {
            ingredientes += "pepperoni "
            cuentaIngredientes += 1
        }
        
        // mensaje de alerta si no ha seleccinado ingredientes o si ha seleccionado mas de 5
        if (cuentaIngredientes > 5 || cuentaIngredientes == 0){
            let title : String = "Alerta"
            var message : String = "No puede seleccionar más de 5 ingredientes"
            if (cuentaIngredientes == 0){
                message = "Debe seleccionar al menos un ingrediente"
            }
            let cancelButtonTitle = "Ok"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel) { action in
                NSLog("Cancelado por el usuario.")
            }
            
            alertController.addAction(cancelAction)
            
            present(alertController, animated: true, completion: nil)

            return
        }
        
        // enviamos los datos al siguiente controlador
        let confirmaPedido = segue.destination as! ConfirmacionPedidoController

        confirmaPedido.ingrediente = ingredientes
        confirmaPedido.queso = self.queso
        confirmaPedido.tamanio = self.tamanio
        confirmaPedido.masa = self.masa
    }
}

