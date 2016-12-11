//
//  TamanioViewController.swift
//  PizzasSwift
//
//  Created by Martin Juarez on 14/11/16.
//  Copyright © 2016 Martin Juarez Acheritobehere. All rights reserved.
//

import UIKit

class TamanioViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var tamanioLabel: UILabel!
    @IBOutlet weak var size: UIPickerView!
    
    var sizeData: [String] = [String]()
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente : String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.size.delegate = self
        self.size.dataSource = self
        
        sizeData = ["Grande","Mediana","Chica"]
        
        navigationItem.hidesBackButton = true; // ocultamos el boton "volver" por si venimos de confirmar un pedido
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (self.tamanio != ""){
            self.size.selectedRow(inComponent: sizeData.index(of: tamanio)!)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sizeData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sizeData[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // enviamos los datos al siguiente controlador
        let tipoMasaView = segue.destination as! TipoMasaController
        tipoMasaView.tamanio = self.sizeData[self.size.selectedRow(inComponent: 0)]
        
        tipoMasaView.ingrediente = self.ingrediente
        tipoMasaView.queso = self.queso
        tipoMasaView.masa = self.masa
    }


}
