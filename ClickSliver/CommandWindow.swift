//  Created by r0ml on 5/11/18
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit

// I will define the Controller and Window for accepting commands.

class CommandController : NSWindowController {
  public static var singleton : CommandController = CommandController()
  
  public init() {
    let w = CommandWindow(contentRect: CGRect(x: 100, y: 100, width: 600, height: 200)
      , styleMask: [.closable, .resizable, .titled, .miniaturizable], backing: .buffered, defer: true)
    super.init(window: w)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func windowDidLoad() {
    super.windowDidLoad()
    
    /*
     [[self window] addInternalWidgetsForStyleMask:NSUtilityWindowMask closeOnly:YES];
  [[self window] setLevel:NSPopUpMenuWindowLevel];
     */
    self.window?.setFrameAutosaveName("CommandWindow")
  
  //  [[self window] setFrame:constrainRectToRect([[self window] frame] , [[[self window] screen] visibleFrame]) display:NO];
  //  [(QSWindow *)[self window] setHideOffset:NSMakePoint(0, -99)];
  //   [(QSWindow *)[self window] setShowOffset:NSMakePoint(0, 99)];
  
    let window = self.window as! CommandWindow
    window.hasShadow = true
  
  /*  [window setHideOffset:NSMakePoint(0, 0)];
  [window setShowOffset:NSMakePoint(0, 0)];
  
  [dSelector setResultsPadding:2];
  [aSelector setResultsPadding:2];
  [iSelector setResultsPadding:2];
 */

//    window setShowEffect:[NSDictionary dictionaryWithObjectsAndKeys:@"QSVExpandEffect", @"transformFn", @"show", @"type", [NSNumber numberWithDouble:0.15] , @"duration", nil]];
  //  [window setHideEffect:[NSDictionary dictionaryWithObjectsAndKeys:@"QSShrinkEffect", @"transformFn", @"hide", @"type", [NSNumber numberWithFloat:.25] , @"duration", nil]];
  
//  [window setWindowProperty:[NSDictionary dictionaryWithObjectsAndKeys:@"QSExplodeEffect", @"transformFn", @"hide", @"type", [NSNumber numberWithDouble:0.2] , @"duration", nil]
 // forKey:kQSWindowExecEffect];
  
 // [window setWindowProperty:[NSDictionary dictionaryWithObjectsAndKeys:@"hide", @"type", [NSNumber numberWithDouble:0.15] , @"duration", nil]
//  forKey:kQSWindowFadeEffect];
  
  // [window setWindowProperty:[NSDictionary dictionaryWithObjectsAndKeys:@"QSVContractEffect", @"transformFn", @"hide", @"type", [NSNumber numberWithDouble:0.333] , @"duration", nil, [NSNumber numberWithDouble:0.25] , @"brightnessB", @"QSStandardBrightBlending", @"brightnessFn", nil]
  // forKey:kQSWindowCancelEffect];
  
  }
  
  
  
}


class CommandWindow : NSWindow {
  
}

