//
//  ViewController.swift
//  PizzasSwift
//
//  Created by Martin Juarez on 11/11/16.
//  Copyright © 2016 Martin Juarez Acheritobehere. All rights reserved.
//

import UIKit

class TipoMasaController: UIViewController ,UIPickerViewDelegate, UIPickerViewDataSource, UINavigationControllerDelegate{
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente : String = ""
    
    @IBOutlet weak var tipoMasaPicker: UIPickerView!
    
    var tipoMasaData: [String] = [String]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Connect data:
        self.tipoMasaPicker.delegate = self
        self.tipoMasaPicker.dataSource = self
        
        tipoMasaData = ["Delgada","Crujiente","Gruesa"]
        
        navigationController?.delegate = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        if (self.masa != ""){
            self.tipoMasaPicker.selectedRow(inComponent: tipoMasaData.index(of: self.masa)!)
        }
        
     }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoMasaData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoMasaData[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // enviamos los datos al siguiente controlador
        let tipoQueso = segue.destination as! TipoQuesoController
        tipoQueso.masa = self.tipoMasaData[self.tipoMasaPicker.selectedRow(inComponent: 0)]
        
        tipoQueso.ingrediente = self.ingrediente
        tipoQueso.queso = self.queso
        tipoQueso.tamanio = self.tamanio
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let tamanio = viewController as? TipoMasaController {
            tamanio.masa = self.tipoMasaData[self.tipoMasaPicker.selectedRow(inComponent: 0)]
            
            tamanio.ingrediente = self.ingrediente
            tamanio.queso = self.queso
            tamanio.tamanio = self.tamanio
        }
    }
}

