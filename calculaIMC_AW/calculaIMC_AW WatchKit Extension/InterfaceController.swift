//
//  InterfaceController.swift
//  calculaIMC_AW WatchKit Extension
//
//  Created by Vital Sistemas on 11/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var pesoActual : Float = 45.0
    var estaturaActual : Float = 150
    var imc : Float = 1
    
    
    @IBOutlet var valorEstatura: WKInterfaceLabel!
    @IBOutlet var valorPeso: WKInterfaceLabel!
    
    @IBAction func nuevoValorPeso(value: Float) {
        valorPeso.setText("\(value)")
        pesoActual = value
    }
    
    @IBAction func nuevoValorEstatura(value: Float) {
        valorEstatura.setText("\(value)")
        estaturaActual = value/100
    }
    
    @IBAction func accionCalcular() {
        let resultado = calculaIMC(pesoActual, e: estaturaActual)
        let valorContexto = Valor (d:"Peso Normal", v:resultado)
        pushControllerWithName("IdentificadorValor", context: valorContexto)
        print(resultado)
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    func calculaIMC (p:Float, e:Float) -> Float {
        let imc = pesoActual/(estaturaActual*estaturaActual)
        print(imc)
        return imc
    }

}
