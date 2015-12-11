//
//  ViewControllerIngredientes.swift
//  Pizzeria
//
//  Created by Vital Sistemas on 09/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import UIKit

class ViewControllerIngredientes: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var pickerData: [String] = [String]()
    
    var ing1 = "";
    var ing2 = "";
    var ing3 = "";
    var ing4 = "";
    var ing5 = "";
    
    var ingrediente = 0;
    var tamaño = "";
    var masa = "";
    var queso = "";
    
    @IBOutlet weak var pickerList: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Input data into the Array:
        pickerData = ["Jamón", "Peperonni", "Champiñones", "Tres Quesos", "Salchicha Italiana", "Jalapeño", "Chorizo", "Pimiento", "Jamón Serrano", "Piña"]
        
        // Connect data:
        self.pickerList.delegate = self
        self.pickerList.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteVista = segue.destinationViewController as! ViewController4Ingredientes
        siguienteVista.uno = ing1
        siguienteVista.dos = ing2
        siguienteVista.tres = ing3
        siguienteVista.cuatro = ing4
        siguienteVista.cinco = ing5
        siguienteVista.masaValor = masa
        siguienteVista.quesoValor = queso
        siguienteVista.tamañoValor = tamaño
        siguienteVista.anterior = 5
        let valor = pickerData[pickerList.selectedRowInComponent(0)]
        if (ingrediente == 1) {
            siguienteVista.uno = valor
        } else if (ingrediente == 2) {
            siguienteVista.dos = valor
        } else if (ingrediente == 3){
            siguienteVista.tres = valor
        } else if (ingrediente == 4) {
            siguienteVista.cuatro = valor
        } else {
            siguienteVista.cinco = valor
        }
        
    }

}
