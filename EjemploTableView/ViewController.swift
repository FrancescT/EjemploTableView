//
//  ViewController.swift
//  EjemploTableView
//
//  Created by Francesc Tormo Rosello on 02/11/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ObtenerTareas {

    @IBOutlet weak var tablaTareas: UITableView!
    
    var listaTareas: [Tarea]!
    var tarea: Tarea!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        listaTareas = []
        tablaTareas.delegate = self
        tablaTareas.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaTareas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! CeldaTableViewCell
        
        tarea = listaTareas[indexPath.row]
        
        celda.lbTitulo.text = tarea.titulo
        celda.lbContenido.text = tarea.contenido
        
        return celda
    }
    
    func obtener(dato: Tarea) {
        tarea = dato
        listaTareas.append(dato)
        tablaTareas.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CREAR" {
            let destino = segue.destination as! CrearTareaViewController
            destino.delegate = self
        }
    }
    

}

