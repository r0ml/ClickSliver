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
  
  public func registerKey(_ keyCode : Int, _ modifierKeys : Int) -> OpaquePointer {
  var gMyHotKeyID = EventHotKeyID()
  gMyHotKeyID.signature = OSType(0x73776174)
  gMyHotKeyID.id = UInt32(keyCode)
  
  var eventType = EventTypeSpec()
  eventType.eventClass = OSType(kEventClassKeyboard)
  eventType.eventKind = OSType(kEventHotKeyPressed)
  
    let targ = GetApplicationEventTarget()
    // let targ = GetEventDispatcherTarget()
    // GetApplicationEventTarget()
  // Install handler.
  let x = InstallEventHandler(targ, {(nextHanlder, theEvent, userData) -> OSStatus in
  var hkCom = EventHotKeyID()
    print("hah", hkCom)
    GetEventParameter(theEvent, EventParamName(kEventParamDirectObject), EventParamType(typeEventHotKeyID), nil, MemoryLayout.size(ofValue: hkCom), nil, &hkCom)
  
  /// Check that hkCom in indeed your hotkey ID and handle it.
    CommandController.singleton.showWindow(nil)
    return OSStatus(0)
  }, 1, [eventType], nil, nil)
  
    print("Install",x)
  // Register hotkey.
    var hotKeyRef : EventHotKeyRef?
    
    // the cmdkey stuff is not the same as in KeyCodes
    let status = RegisterEventHotKey(UInt32(keyCode), UInt32(modifierKeys), gMyHotKeyID, targ, 0, &hotKeyRef)
    print("status",status, hotKeyRef.unsafelyUnwrapped, modifierKeys)
    return hotKeyRef.unsafelyUnwrapped
  }
  
}
