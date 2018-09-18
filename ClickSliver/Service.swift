//  Created by r0ml on 4/25/18
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit
import Carbon

public var theServicer = TheService.init()

@objc public class TheService : NSObject, NSTextViewDelegate {
  var window : NSWindow!
  
  @objc public func activateService(_ pb : NSPasteboard, userData: String, error: NSErrorPointer) {
    print("booyah")
    /// pb.clearContents()
    /// pb.setString("taboo", forType: .string )
    
    if window == nil {
      window = NSWindow.init(contentRect: NSRect(origin: CGPoint(x:100, y:200), size: CGSize(width: 500, height: 50)), styleMask: /*.borderless  */ [.utilityWindow, .titled] , backing: .buffered, defer: false)
      window.isMovableByWindowBackground = true
      window.isMovable = true
    }
    
    let textView = NSTextView(frame: window.frame)
    textView.addInto(window.contentView! )
    //textView.text = "clem"
    textView.textStorage?.append(NSAttributedString(string: "Hello"))
    textView.isEditable = false
    textView.isSelectable = false
    
    print("accepts",textView.acceptsFirstResponder)
    print("can become", window.canBecomeKey)
    
    window.makeFirstResponder(textView)
    window.makeKeyAndOrderFront(self)
  }
  
  @objc public func doService(_ pb : NSPasteboard, userData: String, error: NSErrorPointer) {
    print("gooyah")
    pb.clearContents()
    pb.setString("tada", forType: .string)
  }
  
  /* @objc open func validRequestor(forSendType pb: NSPasteboard.PasteboardType?, returnType: NSPasteboard.PasteboardType?) -> Any? {
   return theServicer
   }*/
  
  @objc public func readSelection(from pboard: NSPasteboard) -> ObjCBool {
    print("read selection: ",pboard)
    return true
  }
  
  @objc public func writeSelection(to pboard: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> ObjCBool {
    print("write selection: ",pboard, types)
    return true
  }
  
  class func servicesMenu() -> R0MenuItem {
    
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
  
  
}


extension NSApplication /* : NSServicesMenuRequestor */ {
  /*  @objc open override func validRequestor(forSendType pb: NSPasteboard.PasteboardType?, returnType: NSPasteboard.PasteboardType?) -> Any? {
   return theServicer
   }*/
  
  /* @objc public func readSelection(from pboard: NSPasteboard) -> ObjCBool {
   print("read selection: ",pboard)
   return true
   }
   
   @objc public func writeSelection(to pboard: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> ObjCBool {
   print("write selection: ",pboard, types)
   return true
   }
   */
  
  
  
  /*public func validRequestor(forSendType: NSPasteboard.PasteboardType?, returnType: NSPasteboard.PasteboardType?) -> Bool {
   return true
   }*/
  
  /* public func readSelection(from pboard: NSPasteboard) -> Bool {
   print("read selection: ",pboard)
   return true
   }
   
   public func writeSelection(to pboard: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> Bool {
   print("write selection: ",pboard, types)
   return true
   }*/
  
}
