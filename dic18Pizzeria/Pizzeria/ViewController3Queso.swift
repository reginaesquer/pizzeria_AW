//
//  ViewController3Queso.swift
//  Pizzeria
//
//  Created by Vital Sistemas on 05/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import UIKit

class ViewController3Queso: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var pickerList: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    var tamañoValor = ""
    var masaValor = ""
    
    override func viewWillAppear(animated: Bool) {
        tamaño.text = tamañoValor;
        masa.text = "Masa " + masaValor;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Input data into the Array:
        pickerData = ["Mozarella", "Cheddar", "Parmesano", "Sin Queso"]
        
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
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteVista = segue.destinationViewController as! ViewController4Ingredientes
        let valor = pickerData[pickerList.selectedRowInComponent(0)]
        siguienteVista.quesoValor = "Queso " + valor
        siguienteVista.masaValor = masa.text!
        siguienteVista.tamañoValor = tamaño.text!
        siguienteVista.anterior = 3
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
