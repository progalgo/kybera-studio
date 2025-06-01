//
//  LibrarySource.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 01.06.2025.
//

import Cocoa

class LibrarySource: NSObject, NSCollectionViewDataSource {
    
    private static let blockKinds: [BlockKind] = [.init(opName: "Add", inputs: [.init(type: .Int, name: "A"), .init(type: .Int, name: "B")], outputs: [.init(type: .Int, name: "Sum")])]
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return LibrarySource.blockKinds.count
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let a = collectionView.makeItem(withIdentifier: .init("lib-item"), for: indexPath)
        a.textField?.stringValue = LibrarySource.blockKinds[indexPath[0]].opName
        return a
    }
}

struct BlockKind {
    let opName: String
    let inputs: [Connection]
    let outputs: [Connection]
}

struct Connection {
    let type: StandardType
    let name: String
}

enum StandardType {
    case Int
    case Float
    case Boolean
}
