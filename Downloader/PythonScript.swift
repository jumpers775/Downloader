//
//  PythonScript.swift
//  Downloader
//
//  Created by Luca Mignatti on 11/30/21.
//

import Foundation
import PythonKit
func RunPythonScript(arg: String){
    let sys = Python.import("sys")
    //print(FileManager.default.currentDirectoryPath)
    //let os = Python.import("os")
    let paths = Bundle.main.paths(forResourcesOfType: "py", inDirectory: nil)
    print(paths[1])
    var str = paths[1]
    var x = 12
    while x > 0 {
        str = String(str.dropLast())
        x -= 1
    }
    print(str)
    sys.path.append("\(str)")
    let file = Python.import("Downloader")
    file.download(arg)
    
    return
}
