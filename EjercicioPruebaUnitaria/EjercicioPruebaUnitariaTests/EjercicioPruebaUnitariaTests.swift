//
//  EjercicioPruebaUnitariaTests.swift
//  EjercicioPruebaUnitariaTests
//
//  Created by Vital Sistemas on 18/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import XCTest
@testable import EjercicioPruebaUnitaria

class EjercicioPruebaUnitariaTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func bajoPeso () {
        let imc : modeloIMC = modeloIMC ()
        imc.peso = 50
        imc.estatura = 1.7
        XCTAssertEqual(imc.IMC(),17.30,"Correcto Bajo de Peso")
    }
    
    func testExample() {
        let imc : modeloIMC = modeloIMC ()
        imc.peso = 50
        imc.estatura = 1.7
        XCTAssertEqual(imc.IMC(),17.30,"Correcto Bajo de Peso")
    }
    
    func pesoNormal () {
        let imc : modeloIMC = modeloIMC ()
        imc.peso = 60
        imc.estatura = 1.7
        XCTAssertEqual(imc.IMC(),20.76,"Correcto Peso Normal")
    }
    
    func testPerformanceExample() {
        let imc : modeloIMC = modeloIMC ()
        imc.peso = 60
        imc.estatura = 1.7
        XCTAssertEqual(imc.IMC(),20.76,"Correcto Peso Normal")
    }
    
}
