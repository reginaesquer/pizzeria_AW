//
//  ViewControllerConfirmar.swift
//  Pizzeria
//
//  Created by Vital Sistemas on 09/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import UIKit

class ViewControllerConfirmar: UIViewController {

    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    
    var tamañoValor : String = ""
    var masaValor : String = ""
    var quesoValor : String = ""
    var ingredientesValor : String = ""
    
    override func viewWillAppear(animated: Bool) {
        tamaño.text = tamañoValor;
        masa.text = masaValor;
        queso.text = quesoValor;
        ingredientes.text = ingredientesValor
        ingredientes.numberOfLines = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
