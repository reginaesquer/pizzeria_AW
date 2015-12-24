//
//  ModeloIMC.swift
//  EjercicioPruebaUnitaria
//
//  Created by Vital Sistemas on 18/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import Foundation

class modeloIMC {
    var peso : Float = 0
    var estatura : Float = 0
    
    func IMC () -> Float {
        var imc = peso/(estatura*estatura)
        imc = round(imc*100)/100
        return imc
    }
}