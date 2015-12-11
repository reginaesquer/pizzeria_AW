//
//  ViewController4Ingredientes.swift
//  Pizzeria
//
//  Created by Vital Sistemas on 08/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import UIKit

class ViewController4Ingredientes: UIViewController {

    @IBOutlet weak var tanaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    
    @IBOutlet weak var confirmar: UIButton!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var ingrediente5: UIButton!
    @IBOutlet weak var ingrediente4: UIButton!
    @IBOutlet weak var ingrediente3: UIButton!
    @IBOutlet weak var ingrediente2: UIButton!
    @IBOutlet weak var ingrediente1: UIButton!
    
    var tamañoValor = ""
    var masaValor = ""
    var quesoValor = ""
    
    var uno = "N/A";
    var dos = "N/A";
    var tres = "N/A";
    var cuatro = "N/A";
    var cinco = "N/A";
    
    var anterior = 0 //3 queso ... 5 ingredientes
    
    override func viewWillAppear(animated: Bool) {
        tanaño.text = tamañoValor;
        masa.text = masaValor;
        queso.text = quesoValor;
        
        labelOne.text = uno
        label2.text = dos
        label3.text = tres
        label4.text = cuatro
        label5.text = cinco
        if (anterior == 5){
            confirmar.hidden = false
        } else {
            confirmar.hidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        confirmar.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let boton = sender as! UIButton
        
        if (boton == confirmar) {
            let siguienteVista2 = segue.destinationViewController as! ViewControllerConfirmar
            
            siguienteVista2.tamañoValor = tamañoValor
            siguienteVista2.masaValor = masaValor
            siguienteVista2.quesoValor = quesoValor
            var ingredientes = "Ingredientes: \n"
            if (labelOne.text! != "N/A") {
                ingredientes = "\(ingredientes)\(labelOne.text! )\n";
            }
            if (label2.text! != "N/A") {
                ingredientes = "\(ingredientes)\(label2.text! )\n";
            }
            if (label3.text! != "N/A") {
                ingredientes = "\(ingredientes)\(label3.text! )\n";
            }
            if (label4.text! != "N/A") {
                ingredientes = "\(ingredientes)\(label4.text! )\n";
            }
            if (label5.text! != "N/A") {
                ingredientes = "\(ingredientes)\(label5.text! )\n";
            }
            siguienteVista2.ingredientesValor = ingredientes
        } else {
            let siguienteVista = segue.destinationViewController as!    ViewControllerIngredientes
        
        
            siguienteVista.ing1 = labelOne.text!
            siguienteVista.ing2 = label2.text!
            siguienteVista.ing3 = label3.text!
            siguienteVista.ing4 = label4.text!
            siguienteVista.ing5 = label5.text!
            siguienteVista.masa = masaValor
            siguienteVista.queso = quesoValor
            siguienteVista.tamaño = tamañoValor
        
        
            if (boton == ingrediente1) {
                siguienteVista.ingrediente = 1
            } else if (boton == ingrediente2) {
                siguienteVista.ingrediente = 2
            } else if (boton == ingrediente3){
                siguienteVista.ingrediente = 3
            } else if (boton == ingrediente4) {
                siguienteVista.ingrediente = 4
            } else if (boton == ingrediente5){
                siguienteVista.ingrediente = 5
            } else if (boton == confirmar) {
            
            }
        }
        
       
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
