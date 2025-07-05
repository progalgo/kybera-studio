//
//  BlockCanvasController.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 26.05.2025.
//

import Cocoa

class BlockCanvasController: NSViewController {
    
    var blocks: [BlockController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        addBlock(point: .init(x: 10, y: 100))
    }
    
    func addBlock(frame: NSRect) {
        let label = NSTextField(labelWithString: "Hello")
        label.frame = frame
        view.addSubview(label)
    }
    
    func addBlock(point: NSPoint) {
        let newblock = BlockController(nibName: "BlockController", bundle: nil)
        newblock.view.frame = .init(origin: point, size: newblock.view.fittingSize)
        blocks.append(newblock)
        view.addSubview(newblock.view)
    }
    
}
