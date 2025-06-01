//
//  LibraryController.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 29.05.2025.
//

import Cocoa

class LibraryController: NSWindowController {
    private var dataSource: NSCollectionViewDataSource! = nil
    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        configureHierarchy()
        configureDataSource()
    }
}

extension LibraryController {
    private func configureHierarchy() {
        let itemNib = NSNib(nibNamed: "LibraryItem", bundle: nil)
        collectionView.register(itemNib, forItemWithIdentifier: .init("lib-item"))
    }
    
    private func configureDataSource() {
        dataSource = LibrarySource()
        collectionView.dataSource = dataSource
    }
}
