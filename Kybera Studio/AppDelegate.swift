//
//  AppDelegate.swift
//  Kybera Studio
//
//  Created by Roman Ustinov on 21.05.2025.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var libraryController = LibraryController(windowNibName: "Library")

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    @IBAction func openLibrary(_ sender: Any) {
        libraryController.showWindow(nil)
    }
    
}

