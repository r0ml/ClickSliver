//  Created by r0ml on 7/3/18
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit
import Carbon

public func setHotKey() {
  let _ = registerKey(kVK_Space, cmdKey+optionKey+controlKey)
}

func registerKey(_ keyCode : Int, _ modifierKeys : Int) -> OpaquePointer {
  var gMyHotKeyID = EventHotKeyID()
  gMyHotKeyID.signature = OSType(0x73776174)
  gMyHotKeyID.id = UInt32(keyCode)
  
  var eventType = EventTypeSpec()
  eventType.eventClass = OSType(kEventClassKeyboard)
  eventType.eventKind = OSType(kEventHotKeyPressed)
  
  // Install handler.
  let targ = GetApplicationEventTarget()
  let x = InstallEventHandler(targ, {(nextHanlder, theEvent, userData) -> OSStatus in
    var hkCom = EventHotKeyID()
    GetEventParameter(theEvent, EventParamName(kEventParamDirectObject), EventParamType(typeEventHotKeyID), nil, MemoryLayout.size(ofValue: hkCom), nil, &hkCom)
    
    /// Check that hkCom in indeed your hotkey ID and handle it.
    CommandController.singleton.handleHotKey()
    return OSStatus(0)
  }, 1, [eventType], nil, nil)

  if x != 0 {
    print("Install hot key =",x)
  }
  // Register hotkey.
  var hotKeyRef : EventHotKeyRef?
  let status = RegisterEventHotKey(UInt32(keyCode), UInt32(modifierKeys), gMyHotKeyID, targ, 0, &hotKeyRef)
  if status != 0 {
    print("status",status, hotKeyRef.unsafelyUnwrapped, modifierKeys)
  }
  return hotKeyRef.unsafelyUnwrapped
}
