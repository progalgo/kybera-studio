//
//  BlockController.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 02.06.2025.
//

import Cocoa

class BlockController: NSViewController {
    
    var inputs: [Connection] = [.init(type: .Int, name: "A"), .init(type: .Int, name: "B")]
    var outputs: [Connection] = [.init(type: .Int, name: "Sum")]
    var name = "Add"
    
    @IBOutlet weak var titleField: NSTextField!
    @IBOutlet weak var grid: NSGridView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = name
        titleField.stringValue = title ?? name
        
    }
    
}
