//
//  CrearTareaViewController.swift
//  EjemploTableView
//
//  Created by Francesc Tormo Rosello on 02/11/2023.
//

import UIKit

class CrearTareaViewController: UIViewController {

    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtContenido: UITextField!
    
    var delegate: ObtenerTareas?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnInsertarTarea(_ sender: Any) {
        let titulo = txtTitulo.text!
        let contenido = txtContenido.text!
        
        if !titulo.isEmpty && !contenido.isEmpty {
            let tarea = Tarea(titulo: titulo, contenido: contenido)
            
            delegate?.obtener(dato: tarea)
            
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
