//
//  GriddedView.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 05.07.2025.
//

import Cocoa

@IBDesignable
class GriddedView: NSView {
    
    @IBInspectable
    var cellSize: CGFloat = 20.0 {
        didSet {
            needsDisplay = true
        }
    }

    @IBInspectable
    var gridColor: NSColor = .lightGray {
        didSet {
            needsDisplay = true
        }
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        gridColor.set()
        let path = NSBezierPath()
        path.lineWidth = 1.0

        let minX = dirtyRect.minX
        let maxX = dirtyRect.maxX
        let minY = dirtyRect.minY
        let maxY = dirtyRect.maxY

        // Vertical lines
        var x = floor(minX / cellSize) * cellSize
        while x <= maxX {
            path.move(to: NSPoint(x: x, y: minY))
            path.line(to: NSPoint(x: x, y: maxY))
            x += cellSize
        }

        // Horizontal lines
        var y = floor(minY / cellSize) * cellSize
        while y <= maxY {
            path.move(to: NSPoint(x: minX, y: y))
            path.line(to: NSPoint(x: maxX, y: y))
            y += cellSize
        }

        path.stroke()
    }
}
