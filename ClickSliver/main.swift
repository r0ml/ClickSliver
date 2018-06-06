//  Created by r0ml on 4/15/18.
//  Copyright © 2018 Semasiology. All rights reserved.

import AppKit

let app = NSApplication.shared

/* In order to make this a menubar app, I need to set the activation policy early on.
   I think that by the time the delegate is hooked up, it is too late.
   So, rather than use the @NSApplicationMain annotation,  and rather than rely on Info.plist settings,
   I have a main which does the right thing */
app.setActivationPolicy(.accessory)

let appDelegate = AppDelegate()
app.delegate = appDelegate
_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)

