//  Created by r0ml on 4/15/18.
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit
import ApplicationServices

class AppDelegate: NSObject, NSApplicationDelegate {
  // Needs to be retained -- so has to be an instance variable -- otherwise the item does not appear
  var statusBarItem : NSStatusItem?
  
  // control shift command option == ^ $ ~ @
  
  func applicationDidFinishLaunching(_ notification: Notification) {

    let mb = MyMenu.create()

    let sb = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let im = NSImage(named: "AppIcon")

    let x = NSStatusBar.system.thickness - 4
    sb.image = im?.resize(withSize: NSSize(width: x, height: x))
    sb.menu = mb
    statusBarItem = sb

    /* I need this because if "removalAllowed" was once set, and the menu bar item was once removed, then
     the status item is invisible upon creation */
    sb.isVisible = true
    
    setHotKey()

    // request accessibility for driving the machine
    let options = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String : true]
    let accessibilityEnabled = AXIsProcessTrustedWithOptions(options as CFDictionary)
    if (!accessibilityEnabled) {
      NSWorkspace.shared.open(URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility")!)
    }

    DispatchQueue.main.async {
      showSplash()
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
