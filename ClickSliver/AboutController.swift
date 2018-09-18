//  Created by r0ml on 4/18/18.
//  Copyright © 2018 Semasiology. All rights reserved.

import Cocoa
import R0Kit

extension String {
  func height(withConstrainedWidth width: CGFloat, font: NSFont) -> CGFloat {
    let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
    let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
    
    return ceil(boundingBox.height)
  }
  
  func width(withConstrainedHeight height: CGFloat, font: NSFont) -> CGFloat {
    let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
    let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
    
    return ceil(boundingBox.width)
  }
}


extension NSAttributedString {
  func height(withConstrainedWidth width: CGFloat) -> CGFloat {
    let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
    let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
    
    return ceil(boundingBox.height)
  }
  
  func width(withConstrainedHeight height: CGFloat) -> CGFloat {
    let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
    let boundingBox = boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, context: nil)
    
    return ceil(boundingBox.width)
  }
}

extension NSScreen {
  public var usesOpenGLAcceleration : Bool { get {
    let screenDictionary = self.deviceDescription
    if let screenID = screenDictionary[ NSDeviceDescriptionKey(rawValue: "NSScreenNumber") ] as? NSNumber {
      let n = screenID.intValue
      return CGDisplayUsesOpenGLAcceleration(CGDirectDisplayID(n)) != 0
    } else {
      return false
    }
    }
  }
}

public class AboutViewController : NSViewController {
  var imageView : NSImageView!
  
  open override func loadView() {
    view = NSView()
    view.backgroundColor = NSColor.controlColor
    
    // let appBundle = Bundle.main
    
    /*var name = appBundle.object( forInfoDictionaryKey: "CFBundleShortVersionString")
     if (name == nil) {
     name = "Quicksilver"
     }*/
    
    // NTViewLocalizer.localizeWindow(self.window!, table: "About", bundle: Bundle.main)
    
    
    // self.window?.delegate = self // needed, so windowWillClose: method is called
    //  (self.window?.initialFirstResponder as! NSTextField).stringValue = String(format: "%@ (%@)", name as! CVarArg, appBundle.object(forInfoDictionaryKey: "CFBundleVersion") as! CVarArg)
    
    /*  if (nil == NSFont(name: "HiraKakuPro-W3", size:10.0)) {
     NSLog("HiraKakuPro-W3 not found. Removing chinese characters")
     let contentView = self.view.window?.contentView
     while (true) {
     if let subview = contentView?.viewWithTag(1) {
     subview.removeFromSuperview()
     } else {
     break
     }
     }
     } */
    
    let taoteching = "道德經"
    
    // chapter 63
    /*  let cv1 = NSTextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 24, height: 0)))
     cv1.text = "為無為 事無事 味無味 大小多少"
     */
    
    let cv2 = NSTextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 24, height: 0)))
    cv2.text = """
    為無為 事無事 味無味
    大小多少 報怨以德
    圖難于其易 為大于其細
    天下難事必作于易 天下大事必作于細 是以聖人終不為大 故能成其大
    夫輕諾必寡信 多易必多難 是以聖人猶難之
    故終無難
    """
    /*
     let cv3 = NSTextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 24, height: 0)))
     cv3.text = "天下難事 必作於易 天下大事 必作於細"
     */
    let cv4 = NSTextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 150, height: 0)))
    cv4.text = """
    Act without doing;
    
    work without effort.
    
    Think of the small as large
    
    and the few as many.
    
    Confront the difficult
    
    while it is still easy;
    
    accomplish the great task
    
    by a series of small acts.
    
    
    
    Act without act,
    Work without work,
    Taste without taste.
    Enlarge the belittled, increase the lessened,
    Reward condemnation with Virtue.
    Complexity is drawn from simplicity,
    Greatness is found in triviality.
    Problematic complexities must be resolved in simplicity,
    Great accomplishments must be built on trivialities,
    Hence the master continues to be unconcerned with great deeds,
    Therefore is capable of accomplishing greatness.
    Light minded promises draws few believers,
    The more simplifications, the more complicated it will become,
    Hence the master addresses the complexity.
    Therefore may continually avoid complications.
    
    
    
    Do without doing,
    Act without action.
    Savor the flavorless.
    Treat the small as large,
    the few as many.
    
    Meet injury
    with the power of goodness.
    
    Study the hard while it is still easy.
    Do big things while they are small.
    The hardest jobs in the world start out easy,
    the great affairs of the world start small.
    
    So the wise soul,
    by never dealing with great things,
    gets great things done.
    
    Now, since taking things too lightly
    makes them worthless,
    and taking things too easy makes them hard,
    the wise soul
    by treating the easy as hard,
    doesn’t find anything hard.
    
    """
    
    
    
    // chapter 41
    
    let cv5 = TextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 85, height: 0)))
    cv5.text = """
    上士聞道 勤而行之 中士聞道 若存若亡
    下士聞道 大笑之 不笑不足以為道
    故建言有之 明道若昧 進道若退 夷道若類 上德若谷 大白若辱 廣德若不足 建德若偷 質直若渝 大方無隅 大器晚成 大音希聲 大象無形
    夫惟道 善貸且成
    """
    
    let fntx = NSFont(name: "HiraKakuPro-W3" /*"HiraMinPro-W3"*/, size: 14)
    
    let textheight : CGFloat = 450
    let qrs = cv5.text.height(withConstrainedWidth: textheight, font: fntx!)
    print(qrs)
    print(cv5.text.width(withConstrainedHeight: textheight, font: fntx!))
    
    let cv6 = NSTextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 150, height: 0)))
    cv6.text = """
    The learned discovers the Dao, duly obliges;
    The learning discovers the Dao, and questions its potency;
    The unlearned discovers the Dao, and roars into laughter,
    Without the laughs, it would not be the Dao.
    Therefore words of wisdom goes:
    Those enlightened by the Dao seem confused,
    Those progressing towards the Dao seem to fall behind,
    Those who discredit the Dao seem honourable,
    Those Virtuous seem desolate,
    Those honest seem humiliated,
    Those with noble Virtue seem lacking,
    Those building on Virtue seem fraudulent,
    Those of principled character seem to waver,
    Great squareness is without turning corners,
    Great instruments are deliberately constructed,
    Great vocalists seldom raise their voices,
    Great icons are shapeless.
    The Dao is a master of provisioning and empowerment.
    """
    /*
     The Dao produced One; One produced Two; Two produced Three; Three produced All things. All things leave behind them the Obscurity (out of which they have come), and go forward to embrace the Brightness (into which they have emerged), while they are harmonised by the Breath of Vacancy.
     What men dislike is to be orphans, to have little virtue, to be as carriages without naves; and yet these are the designations which kings and princes use for themselves. So it is that some things are increased by being diminished, and others are diminished by being increased.
     What other men (thus) teach, I also teach. The violent and strong do not die their natural death. I will make this the basis of my teaching.
     
     
     
     Superior men, hearing about the Dao, Will work diligently under its guidance. Mediocre men, hearing about the Dao, Remembers and then forgets about it.
     Inferior men, hearing about the Dao, Laughs and jeers at it.
     If people do not laugh or jeer at it,
     It is unlikely to be the Dao.
     Thus it is said:
     Those whose mind shines with the Dao Appear to be dull and stupid.
     Those who make progress along the Dao Appear to be falling behind.
     Those who go astray
     Appear to be following the Dao.
     The truly virtuous are humble like a valley, The truly stainless souls appear sullied.
     A man with many virtues appears to be inadequate.
     Those who are establishing their virtues look like thieves.
     The truthful look like good quality turned bad,
     An infinite space will have no corners.
     A man becomes a great instrument accomplishes through long training.
     """
     */
    
    cv5.font = fntx
    cv5.setLayoutOrientation(.vertical)
    
    // cv5.setContentHuggingPriority(NSLayoutConstraint.Priority.fittingSizeCompression-1, for:NSLayoutConstraint.Orientation.horizontal)
    // cv5.setContentCompressionResistancePriority(.defaultHigh+1, for: .horizontal)
    cv5.sizeToFit()
    cv5.textAlignment = .center
    
    
    
    // Need to put something here.
    
    let jj = View()
    cv5.addInto(jj, with: [.centerX, .top, .bottom])
    cv5.widthAnchor.constraint(greaterThanOrEqualToConstant: qrs).isActive = true
    cv5.heightAnchor.constraint(lessThanOrEqualToConstant: textheight ).isActive = true
    
    cv6.sizeToFit()
    let s1 = View().stacker(vertical: false)
    let s2 = s1.spread(0.4).view(jj).spread(0.6).view(cv6).end()
    s2.addInto(view)
    
    s2.backgroundColor = NSColor.clear
    
    // s2.backgroundColor = NSColor.clear
    
    
    
    let img = NSImageView.init(image: NSImage.init(named: "ClickSliver")!)
    
    
    img.scaleMe()
    img.heightAnchor.constraint(equalToConstant: 225).isActive = true
    img.widthAnchor.constraint(equalToConstant: 225).isActive = true
    
    
    // let btf = NSTextField(labelWithString: "水银")
    let fnt = NSFont(name: "HiraMinPro-W3", size: 288 )
    // btf.font = fnt
    // btf.text
    
    let btv = NSTextView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 350, height: 0)))
    
    btv.setLayoutOrientation(.vertical)
    btv.font = fnt
    btv.text = "水银"
    
    
    let z = NSMutableAttributedString.init(string: "水银", attributes: [
      NSAttributedString.Key.backgroundColor : NSColor.orange,
      /* NSColor.controlBackgroundColor */
      NSAttributedString.Key.font : fnt as Any ] )
    btv.attributedText = z
    
    // make it read only -- so the cursor doesn't appear
    // make it white with light gray background
    // make it render all the text, but get clipped by the superview (cutting off some of the letter ...)
    
    btv.addInto(view, with: [.topPad(-5), .centerX ])
    
    
    //  btv.backgroundColor = NSColor.controlBackgroundColor
    //  btv.wantsLayer = true
    //  btv.layer?.backgroundColor = NSColor.controlBackgroundColor.cgColor
    
    // btv.drawsBackground = false
    btv.setTransparentBackground()
    
    //btv.drawsBackground = true
    // (btv as NSView).backgroundColor = NSColor.green
    // print(NSColor.controlBackgroundColor.redComponent, NSColor.controlBackgroundColor)
    // btv.sizeToFit()
    btv.textColor = NSColor.white
    btv.isEditable = false
    btv.alphaValue = 0.5
    
    let lm = btv.layoutManager!
    print("orientation:", btv.layoutOrientation)
    
    // btv.isHorizontallyResizable = true
    // btv.isVerticallyResizable = false
    
    //    btv.setFrameSize(CGSize(width: 300, height: 0))
    //    btv.setBoundsSize(CGSize(width: 300, height: 0))
    
    let tc = btv.textContainer!
    print("orient:",tc.layoutOrientation.rawValue)
    
    //  tc.size = CGSize(width: 100000000, height: 0)
    
    //    tc.widthTracksTextView = false
    //    tc.heightTracksTextView = true
    
    let rng = lm.glyphRange(for: tc) // this causes the resizing to happen?
    
    // lm.ensureLayout(for: tc)
    
    // print("container:", tc.containerSize)
    
    // let r = lm.usedRect(for: tc) // this doesn't work
    let r2 = lm.boundingRect(forGlyphRange: rng, in: tc)
    
    // print(r, r2)
    // btv.setFrameSize(r!.size)
    // btv.setBoundsSize(r!.size)
    btv.widthAnchor.constraint(equalToConstant: r2.width).isActive = true
    btv.heightAnchor.constraint(equalToConstant: r2.height).isActive = true
    
    /*
     if ( (NSScreen.main?.usesOpenGLAcceleration)! ) {
     let r0 = imageView.frame
     let r = self.view.window?.convertToScreen(r0)
     // NSRect r = NSMakeRect(100, 200, 300, 400);
     
     let win = NSWindow.init(contentRect:r!,
     styleMask: NSWindow.StyleMask.borderless,
     backing:NSWindow.BackingStoreType.buffered,
     defer: false
     )
     win.ignoresMouseEvents = true
     win.backgroundColor = NSColor.clear
     win.isOpaque = false
     win.hasShadow = false
     
     win.isReleasedWhenClosed = true
     
     let content = QCView()
     content.loadComposition(fromFile: appBundle.path(forResource: "QSSplash", ofType: "qtz"))
     win.contentView = content
     content.setEraseColor(NSColor.clear)
     
     // content.setClearsBackground(true)
     
     content.setMaxRenderingFrameRate(10)
     win.display()
     view.window?.addChildWindow(win, ordered:NSWindow.OrderingMode.above)
     imageView.removeFromSuperview()
     }
     */
    img.addInto(view, with: [.top, .trailing])
    img.alphaValue = 0.5
    img.wantsLayer = true
    img.layer!.shadowOffset = CGSize(width: 4, height: -4)
    img.layer!.shadowRadius = 5
    img.layer!.shadowOpacity = 0.5
    
  }
  
  open override func viewDidLoad() {
    print("glem")
  }
  
  open override func viewWillLayout() {
    // super.viewWillLayout()
    // let z = scrollView.bounds
    // if z == lastBounds { return }
    // lastBounds = z
    // self.collectionView.invalidateLayout()
  }
  
  // FIXME: should this be true or false?
  open override func viewWillAppear() {
    // view.wantsLayer = true
    // view.layer?.backgroundColor = NSColor.red.cgColor
    
    
    self.viewWillAppear(false) // I don't know if this should be true or false
  }
  
  open func viewWillAppear(_ animated: Bool) { // just so I can have an override
    // view.wantsLayer = true
    // view.layer?.backgroundColor = NSColor.red.cgColor
    
    
  }
  
}

public class AboutWindowController : NSWindowController, NSWindowDelegate {
  
  public class func open() {
    let wnd = NSWindow(contentViewController: AboutViewController())
    wnd.setContentSize(CGSize(width: 311, height: 552))
    wnd.setFrameOrigin(CGPoint(x: 100, y: 100))
    wnd.styleMask =  [.closable, .titled]
    wnd.backingType = .buffered
    
    wnd.isReleasedWhenClosed = false
    wnd.title = "About"
    wnd.isOpaque = false
    wnd.center()
    let fan = "About"
    wnd.setFrameAutosaveName(fan)
    // wnd.makeKeyAndOrderFront(nil)
    
    let controller = AboutWindowController(window: wnd)
    controller.showWindow(wnd)
  }
  
  open func setup() {
    fatalError("failed to override CollectionViewController.setup")
  }
  
  override public func windowDidLoad() {
    self.window?.contentView?.addSubview(AboutViewController().view )
  }
  
  /*required public init?(coder: NSCoder) {
   fatalError("init(coder:) has not been implemented")
   }*/
  
  /* override public func showWindow(_ sender : Any?) {
   // start rendering QS animation each time the window is opened
   if let z = self.window?.childWindows, z.count > 0, let y = z[0].contentView as? QCView {
   y.startRendering()
   }
   super.showWindow(sender)
   }*/
  
  /*
   public func windowWillClose(_ notification : Notification) {
   // stop rendering QS animation each time the window is closed
   let a = notification.object as? NSWindow
   let b = a?.childWindows?[0]
   if let c = b?.contentView as? QCView {
   c.stopRendering()
   }
   }*/
  
  /*
   public func webView(_ sender : WebView, decidePolicyForNavigationAction actionInformation : NSDictionary, request: NSURLRequest, frame: WebFrame, decisionListener listener : AnyObject) {
   if (request.url?.scheme == "file") {
   listener.use()
   } else {
   NSWorkspace.shared.open(request.url!)
   listener.ignore()
   }
   }*/
  
}
