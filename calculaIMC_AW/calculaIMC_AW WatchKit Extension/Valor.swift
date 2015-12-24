//
//  Valor.swift
//  calculaIMC_AW
//
//  Created by Vital Sistemas on 15/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//
import WatchKit
    
    class Valor: NSObject {
        var descripcion : String = ""
        var imc : Float = 0
        
        init (d:String, v: Float) {
            descripcion = d
            imc = v
        }
    }
