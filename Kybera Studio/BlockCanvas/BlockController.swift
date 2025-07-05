//
//  BlockController.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 02.06.2025.
//

import Cocoa

class BlockController: NSViewController {
    
    var inputs: [Connection] = [.init(type: .Int, name: "Alpha"), .init(type: .Int, name: "B")]
    var outputs: [Connection] = [.init(type: .Int, name: "Sum")]
    var name = "Add"
    
    @IBOutlet weak var inputsStack: NSStackView?
    @IBOutlet weak var outputsStack: NSStackView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = name
        
        inputsStack?.setViews(inputs.map({i in
            NSTextField(labelWithString: i.name)
        }) , in: .top)
        
        outputsStack?.setViews(outputs.map({o in
            NSTextField(labelWithString: o.name)
        }), in: .top)
    }
    
}
