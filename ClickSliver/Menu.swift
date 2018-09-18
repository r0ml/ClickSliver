//  Created by r0ml on 7/29/18
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit
import IOKit.pwr_mgt
import CoreGraphics
import AVKit

public class MyMenu {
  static var sleepDisabled : IOPMAssertionID = 0

  class func create() -> NSMenu {
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

    mb += R0MenuItem( title: NSLocalizedString("Disable Sleep", tableName: "Menu", value: "Disable Sleep", comment: "disable sleep"), keyEquivalent: "S") { x in
      if sleepDisabled == 0 {
        print("prevent user idle display sleep -> on")
        let success = IOPMAssertionCreateWithName(// kIOPMAssertPreventUserIdleDisplaySleep as CFString,
                                                  kIOPMAssertPreventUserIdleSystemSleep as CFString,
                                                  IOPMAssertionLevel(kIOPMAssertionLevelOn),
                                                  "ClickSliver-Wakeful" as CFString,
                                                  &sleepDisabled)
        if success == kIOReturnSuccess {
          print("assertion with name ClickSliver-Wakeful: \(sleepDisabled)")
          (x as! NSMenuItem).title = NSLocalizedString("Enable Sleep", tableName: "Menu", value: "Enable Sleep", comment: "enable sleep")
          // IOPMAssertionRelease(assertionID)
        } else {
          print("sleepiness failed: \(success)")
        }
      } else {
        print("prevent user idle display sleep -> off")
          IOPMAssertionRelease(sleepDisabled)
          sleepDisabled = 0
        (x as! NSMenuItem).title = NSLocalizedString("Disable Sleep", tableName: "Menu", value: "Disable Sleep", comment: "disable sleep")

      }
    }

    mb += R0MenuItem( title: NSLocalizedString("ScreenShot", tableName: "Menu", value: "ScreenShot", comment: "screen shot"), keyEquivalent: "") { x in
      let screenshot : CGImage? = CGWindowListCreateImage(
        CGRect.infinite,
        .optionOnScreenOnly,
        kCGNullWindowID,
      .nominalResolution)

      let desktop = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask)[0]
      let destinationURL = URL.init(fileURLWithPath: "clem.png", relativeTo: desktop)
      guard let destination = CGImageDestinationCreateWithURL(destinationURL as CFURL, kUTTypePNG, 1, nil), let ss = screenshot else { return }
        CGImageDestinationAddImage(destination, ss, nil)
        CGImageDestinationFinalize(destination)
    }

    mb += R0MenuItem( title: NSLocalizedString("ScreenCast", tableName: "Menu", value: "ScreenCast", comment: "screen cast"),
                      keyEquivalent: "") { x in

/*
                        session = AVCaptureSession()

                        let input = AVCaptureScreenInput(displayID: screenId)

                        input.minFrameDuration = CMTime(videoFramesPerSecond: framesPerSecond)

                        if let cropRect = cropRect {
                          input.cropRect = cropRect
                        }

                        input.capturesCursor = showCursor
                        input.capturesMouseClicks = highlightClicks

                        output = AVCaptureMovieFileOutput()

                        // Needed because otherwise there is no audio on videos longer than 10 seconds
                        // http://stackoverflow.com/a/26769529/64949
                        output.movieFragmentInterval = .invalid

                        if let audioDevice = audioDevice {
                          if !audioDevice.hasMediaType(.audio) {
                            print("invalidAudioDevice")
                          } else {

                            do {
                          let audioInput = try AVCaptureDeviceInput(device: audioDevice)
                            } catch {
                              print("AVCaptureDeviceInput", error)
                            }
                          if session.canAddInput(audioInput) {
                            session.addInput(audioInput)
                          } else {
                            print("couldNotAddMic")
                            // throw ApertureError.couldNotAddMic
                          }
                        }
                        }

                        if session.canAddInput(input) {
                          session.addInput(input)
                        } else {
                          print("couldNotAddScreen")
                        }

                        if session.canAddOutput(output) {
                          session.addOutput(output)
                        } else {
                          print("couldNotAddOutput")
                        }

                        /// TODO: Default to HEVC when on 10.13 or newer and encoding is hardware supported.
                        /// Without hardware encoding I got 3 FPS full screen recording.
                        /// TODO: Find a way to detect hardware encoding support.
                        /// Hardware encoding is supported on 6th gen Intel processor or newer.
                        if let videoCodec = videoCodec {
                          output.setOutputSettings([AVVideoCodecKey: videoCodec], for: output.connection(with: .video)!)
                        }

*/


    }


    mb += R0MenuItem( title: NSLocalizedString("Rescan Catalog", tableName: "Menu", value: "Rescan Catalog", comment: "launch rescan catalog task"), keyEquivalent: "r") {
      print($0 as Any)
    }
    mb += R0MenuItem.separator()
    mb += TheService.servicesMenu()
    mb += R0MenuItem( title: NSLocalizedString("Hide ClickSliver", tableName: "Menu", value: "Hide ClickSliver", comment: "hide clicksliver"), keyEquivalent: "h") {
      NSApp.hide($0)
    }
    mb += R0MenuItem(title: NSLocalizedString("Hide Others", tableName: "Menu", value: "Hide Others", comment: "hide other applications"), keyEquivalent: "@h", { NSApp.hideOtherApplications($0) } )
    mb += R0MenuItem(title: NSLocalizedString("Show All", tableName: "Menu", value: "Show All", comment: "show all applications"), keyEquivalent: "", { NSApp.unhideAllApplications( $0) } )
    mb += R0MenuItem.separator()
    mb += R0MenuItem(title: NSLocalizedString("Quit ClickSliver", tableName: "Menu", value: "Quit ClickSliver", comment: "quit clicksliver immediately"), keyEquivalent: "@q") {
      NSApp.terminate($0) }
    
    // I need the mb+ everywhere, because it could be one expression, but the compiler can't handle it
    
    // let fm = mb.addSubmenu(withTitle:
    //   NSLocalizedString("Window", tableName: "Menu", value: "Window", comment:"Window")
    // )
    
    let hm = mb.addSubmenu(withTitle: NSLocalizedString("Help", tableName: "Menu", value: "Help", comment: "Help"))
    
    hm.addItem( withTitle: NSLocalizedString("Release Notes", tableName: "Menu", value: "Release Notes", comment: "show release notes"), keyEquivalent: "") {
      _ in
      NSWorkspace.shared.open( Bundle.main.url(forResource: "Changes", withExtension: "html")! )
    }
    return mb
  }
}
