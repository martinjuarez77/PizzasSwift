//
//  ViewController.swift
//  PizzasSwift
//
//  Created by Martin Juarez on 11/11/16.
//  Copyright © 2016 Martin Juarez Acheritobehere. All rights reserved.
//

import UIKit

class TipoQuesoController: UIViewController ,UIPickerViewDelegate, UIPickerViewDataSource{
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente : String = ""

    
    @IBOutlet weak var tipoQuesoPicker: UIPickerView!
    var tipoQuesoData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tipoQuesoPicker.delegate = self
        self.tipoQuesoPicker.dataSource = self
        
        tipoQuesoData = ["Muzarella","Chedar","Parmesano", "Sin queso"]
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (self.queso != ""){
            self.tipoQuesoPicker.selectedRow(inComponent: tipoQuesoData.index(of: self.queso)!)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQuesoData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoQuesoData[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // enviamos los datos al siguiente controlador
        let ingredientes = segue.destination as! IngredientesController
        ingredientes.queso = self.tipoQuesoData[self.tipoQuesoPicker.selectedRow(inComponent: 0)]
        
        ingredientes.ingrediente = self.ingrediente
        ingredientes.tamanio = self.tamanio
        ingredientes.masa = self.masa
    }
}

