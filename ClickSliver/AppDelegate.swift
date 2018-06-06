//  Created by r0ml on 4/15/18.
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit
import ApplicationServices
import Carbon

class AppDelegate: NSObject, NSApplicationDelegate {
  // Needs to be retained -- so has to be an instance variable -- otherwise the item does not appear
  var statusBarItem : NSStatusItem?
  
  func servicesMenu() -> R0MenuItem {
    
    // NSRegisterServicesProvider(NSApp, NSServiceProviderName(rawValue: "ClickSliver"))
    NSApp.servicesProvider = theServicer
    NSApp.registerServicesMenuSendTypes( [.string, .rtf, .fileURL, .filePromise, .html, .pdf, .png, .rtfd, .sound, .tiff, .URL, .vCard], returnTypes:[.string, .rtf, .fileURL, .filePromise, .html, .pdf, .png, .rtfd, .sound, .tiff, .URL, .vCard])
    
    // NSRegisterServicesProvider(theServicer, NSServiceProviderName(rawValue: "ClickSliver"))
    NSUpdateDynamicServices()
    
    
    let servicesMenu = NSMenu()
    
    // Create menu item for it
    let servicesItem = R0MenuItem(title: "Services", keyEquivalent: "") {_ in }
    
    servicesItem.submenu = servicesMenu
    NSApp.servicesMenu = servicesMenu
    return servicesItem
  }
  
  // control shift command option == ^ $ ~ @
  
  func applicationDidFinishLaunching(_ notification: Notification) {
    NSApp.mainMenu = NSMenu()
    
    let mb = NSApp.mainMenu!.addSubmenu(withTitle:
      NSLocalizedString("ClickSliver", tableName: "Menu", value: "ClickSliver", comment:"Application name")
      )
    
    mb += R0MenuItem(title: NSLocalizedString("About ClickSliver", tableName: "Menu", value: "About ClickSliver", comment: "about clicksliver"), keyEquivalent: "n") {_ in
        AboutWindowController.open()
      }
    
    mb += R0MenuItem.separator()
    mb += R0MenuItem( title: NSLocalizedString("Preferences", tableName: "Menu", value: "Preferences", comment: "open preferences pane"), keyEquivalent: ",") {
        print($0 as Any)
      }
    mb += R0MenuItem( title: NSLocalizedString("Catalog", tableName: "Menu", value: "Catalog", comment: "open catalog pane"), keyEquivalent: ";") {
        print($0 as Any)
      }
    mb += R0MenuItem( title: NSLocalizedString("Triggers", tableName: "Menu", value: "Triggers", comment: "open triggers pane"), keyEquivalent: "'") {
        print($0 as Any)
      let options = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String : true]
      let accessibilityEnabled = AXIsProcessTrustedWithOptions(options as CFDictionary)

      }

    mb += R0MenuItem.separator()
    mb += R0MenuItem( title: NSLocalizedString("Rescan Catalog", tableName: "Menu", value: "Rescan Catalog", comment: "launch rescan catalog task"), keyEquivalent: "r") {
      print($0 as Any)
    }
    mb += R0MenuItem.separator()
    mb += servicesMenu()
    mb += R0MenuItem( title: NSLocalizedString("Hide ClickSliver", tableName: "Menu", value: "Hide ClickSliver", comment: "hide clicksliver"), keyEquivalent: "h") {
      NSApp.hide($0)
      }
    mb += R0MenuItem(title: NSLocalizedString("Hide Others", tableName: "Menu", value: "Hide Others", comment: "hide other applications"), keyEquivalent: "@h", { NSApp.hideOtherApplications($0) } )
    mb += R0MenuItem(title: NSLocalizedString("Show All", tableName: "Menu", value: "Show All", comment: "show all applications"), keyEquivalent: "", { NSApp.unhideAllApplications( $0) } )
    mb += R0MenuItem.separator()
    mb += R0MenuItem(title: NSLocalizedString("Quit ClickSliver...", tableName: "Menu", value: "Quit ClickSliver...", comment: "quit clicksliver slowly"), keyEquivalent: "q") {
        NSApp.terminate($0) }
    mb += R0MenuItem(title: NSLocalizedString("Quit ClickSliver", tableName: "Menu", value: "Quit ClickSliver", comment: "quit clicksliver immediately"), keyEquivalent: "@q") {
        NSApp.terminate($0) }
    
    // I need the mb+ everywhere, because it could be one expression, but the compiler can't handle it
    
    let fm = mb.addSubmenu(withTitle:
      NSLocalizedString("Window", tableName: "Menu", value: "Window", comment:"Window")
    )

    let hm = mb.addSubmenu(withTitle: NSLocalizedString("Help", tableName: "Menu", value: "Help", comment: "Help"))
    
    hm.addItem( withTitle: NSLocalizedString("Release Notes", tableName: "Menu", value: "Release Notes", comment: "show release notes"), keyEquivalent: "") {
     _ in
      NSWorkspace.shared.open( Bundle.main.url(forResource: "Changes", withExtension: "html")! )
    }
    
    let sb = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let im = NSImage(named: NSImage.Name("AppIcon"))

    let x = NSStatusBar.system.thickness - 4
    sb.image = im?.resize(withSize: NSSize(width: x, height: x))
   
    // sb.behavior = .removalAllowed
    
    // sb.popUpMenu(mb)
    sb.menu = mb
    // sb.toolTip = "Whoa!"
    // sb.highlightMode = true
    
    // NSMenu.setMenuBarVisible(false)
    statusBarItem = sb
    
    // sb.isEnabled = true
    /* I need this because if "removalAllowed" was once set, and the menu bar item was once removed, then
      the status item is invisible upon creation */
    sb.isVisible = true
    
    // space (ctrl-option-command)
    let _ = NSApp.registerKey(kVK_Space, cmdKey+optionKey+controlKey)
    
    
    let options = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String : true]
    let accessibilityEnabled = AXIsProcessTrustedWithOptions(options as CFDictionary)
    if (!accessibilityEnabled) {
      NSWorkspace.shared.open(URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility")!)
    }
    
  }
  

  /* func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply {
   return .terminateNow // could also be .terminateCancel
   }
   
   func applicationWillTerminate(_ aNotification: Notification) {
   // Insert code here to tear down your application
   }
   */
  
}




