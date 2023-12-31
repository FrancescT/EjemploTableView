//
//  ObtenerTareas.swift
//  EjemploTableView
//
//  Created by Francesc Tormo Rosello on 02/11/2023.
//

import Foundation

protocol ObtenerTareas {
    func obtener(dato: Tarea)
    func eliminar(posicion: Int)
    func modificar(posicion:Int, dato: Tarea)
}
