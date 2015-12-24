//
//  VistaDetalle.swift
//  calculaIMC_AW
//
//  Created by Vital Sistemas on 15/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class VistaDetalle: WKInterfaceController {

    @IBOutlet var etiquetaResultado: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Valor
        
        etiquetaResultado.setText(String(c.imc))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
