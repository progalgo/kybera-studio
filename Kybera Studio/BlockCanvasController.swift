//
//  BlockCanvasController.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 26.05.2025.
//

import Cocoa

class BlockCanvasController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        addBlock(frame: .init(x: 10, y: 10, width: 35, height: 20))
    }
    
    func addBlock(frame: NSRect) {
        let label = NSTextField(labelWithString: "Hello")
        label.frame = frame
        view.addSubview(label)
    }
    
}
