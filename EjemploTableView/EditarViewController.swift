//
//  EditarViewController.swift
//  EjemploTableView
//
//  Created by Francesc Tormo Rosello on 09/11/2023.
//

import UIKit

class EditarViewController: UIViewController {

    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtContenido: UITextField!
    
    var tarea: Tarea!
    var posicion: Int!
    var delegate: ObtenerTareas!
    override func viewDidLoad() {
        super.viewDidLoad()

        txtTitulo.text = tarea.titulo
        txtContenido.text = tarea.contenido
        
    }
    
    @IBAction func btnEliminar(_ sender: Any) {
        delegate.eliminar(posicion: posicion)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnModificar(_ sender: Any) {
        if txtTitulo.text!.isEmpty || txtContenido.text!.isEmpty {
            let alert = UIAlertController(title: "ERROR", message: "FALTAN DATOS", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{
        let nuevaTarea = Tarea(titulo: txtTitulo.text!, contenido: txtContenido.text!)
        delegate.modificar(posicion: posicion, dato: nuevaTarea)
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
