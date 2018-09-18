//  Created by r0ml on 4/25/18
//  Copyright © 2018 Semasiology. All rights reserved.

import R0Kit

/*
 guard let ctx = NSGraphicsContext.current?.cgContext else { return }
 ctx.translateBy(x: 0, y: self.bounds.size.height)
 ctx.scaleBy(x: 1, y: -1)
 let colorSpace = CGColorSpaceCreateDeviceRGB()
 
 let scaleFactor: CGFloat = 1
 // ctx.scaleBy(x: scaleFactor, y: scaleFactor)
 
 /*  Shape   */
 let pathRef = CGMutablePath()
 pathRef.move(to: CGPoint(x: 378.71, y: 33.875))
 pathRef.addQuadCurve(to: CGPoint(x: 471.016, y: 47.593), control: CGPoint(x: 428.432, y: 33.875))
 pathRef.addQuadCurve(to: CGPoint(x: 557.414, y: 91.739), control: CGPoint(x: 513.6, y: 61.31))
 pathRef.addLine(to: CGPoint(x: 573.168, y: 45.847))
 pathRef.addLine(to: CGPoint(x: 608.613, y: 45.847))
 pathRef.addLine(to: CGPoint(x: 669.177, y: 270.535))
 pathRef.addCurve(to: CGPoint(x: 679.75, y: 270.319), control1: CGPoint(x: 674.114, y: 270.281), control2: CGPoint(x: 670.592, y: 270.435))
 pathRef.addQuadCurve(to: CGPoint(x: 789.04, y: 290.272), control: CGPoint(x: 736.857, y: 270.319))
 pathRef.addQuadCurve(to: CGPoint(x: 856.977, y: 330.178), control: CGPoint(x: 825.963, y: 304.239))
 pathRef.addLine(to: CGPoint(x: 877.654, y: 282.29))
 pathRef.addLine(to: CGPoint(x: 913.099, y: 282.29))
 pathRef.addLine(to: CGPoint(x: 965.775, y: 496.786))
 pathRef.addLine(to: CGPoint(x: 920.484, y: 510.753))
 pathRef.addQuadCurve(to: CGPoint(x: 805.286, y: 368.587), control: CGPoint(x: 877.162, y: 420.465))
 pathRef.addQuadCurve(to: CGPoint(x: 674.335, y: 325.19), control: CGPoint(x: 746.211, y: 325.19))
 pathRef.addQuadCurve(to: CGPoint(x: 596.552, y: 340.903), control: CGPoint(x: 631.013, y: 325.19))
 pathRef.addQuadCurve(to: CGPoint(x: 544.861, y: 381.557), control: CGPoint(x: 562.091, y: 356.616))
 pathRef.addQuadCurve(to: CGPoint(x: 527.63, y: 432.437), control: CGPoint(x: 527.63, y: 406.498))
 pathRef.addQuadCurve(to: CGPoint(x: 540.922, y: 477.83), control: CGPoint(x: 527.63, y: 455.882))
 pathRef.addQuadCurve(to: CGPoint(x: 581.291, y: 516.489), control: CGPoint(x: 554.215, y: 499.779))
 pathRef.addQuadCurve(to: CGPoint(x: 669.904, y: 551.657), control: CGPoint(x: 608.367, y: 533.2))
 pathRef.addLine(to: CGPoint(x: 798.394, y: 590.066))
 pathRef.addQuadCurve(to: CGPoint(x: 867.07, y: 617.003), control: CGPoint(x: 822.024, y: 597.05))
 pathRef.addQuadCurve(to: CGPoint(x: 937.222, y: 659.154), control: CGPoint(x: 912.115, y: 636.956))
 pathRef.addQuadCurve(to: CGPoint(x: 976.606, y: 713.526), control: CGPoint(x: 962.329, y: 681.352))
 pathRef.addQuadCurve(to: CGPoint(x: 990.882, y: 783.112), control: CGPoint(x: 990.882, y: 745.7))
 pathRef.addQuadCurve(to: CGPoint(x: 919.253, y: 928.021), control: CGPoint(x: 990.882, y: 865.917))
 pathRef.addQuadCurve(to: CGPoint(x: 733.903, y: 990.125), control: CGPoint(x: 847.624, y: 990.125))
 pathRef.addQuadCurve(to: CGPoint(x: 629.044, y: 972.915), control: CGPoint(x: 675.32, y: 990.125))
 pathRef.addQuadCurve(to: CGPoint(x: 529.107, y: 911.809), control: CGPoint(x: 582.768, y: 955.706))
 pathRef.addLine(to: CGPoint(x: 506.462, y: 978.153))
 pathRef.addLine(to: CGPoint(x: 472.001, y: 978.153))
 pathRef.addLine(to: CGPoint(x: 430.185, y: 749.898))
 pathRef.addCurve(to: CGPoint(x: 375.757, y: 753.681), control1: CGPoint(x: 412.184, y: 752.731), control2: CGPoint(x: 393.95, y: 753.488))
 pathRef.addQuadCurve(to: CGPoint(x: 115.824, y: 633.464), control: CGPoint(x: 215.76, y: 753.681))
 pathRef.addQuadCurve(to: CGPoint(x: 33.118, y: 396.023), control: CGPoint(x: 33.118, y: 533.699))
 pathRef.addQuadCurve(to: CGPoint(x: 78.901, y: 212.704), control: CGPoint(x: 33.118, y: 294.761))
 pathRef.addQuadCurve(to: CGPoint(x: 205.176, y: 82.261), control: CGPoint(x: 124.685, y: 130.647))
 pathRef.addQuadCurve(to: CGPoint(x: 378.71, y: 33.875), control: CGPoint(x: 285.666, y: 33.875))
 pathRef.closeSubpath()
 pathRef.move(to: CGPoint(x: 636.633, y: 642.73))
 pathRef.addCurve(to: CGPoint(x: 625.351, y: 653.417), control1: CGPoint(x: 628.328, y: 650.759), control2: CGPoint(x: 632.111, y: 647.219))
 pathRef.addQuadCurve(to: CGPoint(x: 508.677, y: 729.239), control: CGPoint(x: 569.23, y: 704.796))
 pathRef.addCurve(to: CGPoint(x: 480.008, y: 739.146), control1: CGPoint(x: 499.307, y: 733.06), control2: CGPoint(x: 489.728, y: 736.341))
 pathRef.addCurve(to: CGPoint(x: 538.707, y: 836.487), control1: CGPoint(x: 494.209, y: 774.535), control2: CGPoint(x: 514.253, y: 807.295))
 pathRef.addQuadCurve(to: CGPoint(x: 630.767, y: 909.565), control: CGPoint(x: 580.306, y: 884.873))
 pathRef.addQuadCurve(to: CGPoint(x: 733.411, y: 934.256), control: CGPoint(x: 681.227, y: 934.256))
 pathRef.addQuadCurve(to: CGPoint(x: 857.47, y: 890.859), control: CGPoint(x: 804.302, y: 934.256))
 pathRef.addQuadCurve(to: CGPoint(x: 901.777, y: 805.06), control: CGPoint(x: 901.777, y: 854.444))
 pathRef.addQuadCurve(to: CGPoint(x: 869.777, y: 730.735), control: CGPoint(x: 901.777, y: 759.667))
 pathRef.addQuadCurve(to: CGPoint(x: 753.595, y: 676.862), control: CGPoint(x: 837.286, y: 701.803))
 pathRef.addLine(to: CGPoint(x: 636.633, y: 642.73))
 pathRef.closeSubpath()
 pathRef.move(to: CGPoint(x: 387.079, y: 86.751))
 pathRef.addQuadCurve(to: CGPoint(x: 264.744, y: 122.915), control: CGPoint(x: 320.619, y: 86.751))
 pathRef.addQuadCurve(to: CGPoint(x: 174.161, y: 228.916), control: CGPoint(x: 208.868, y: 159.08))
 pathRef.addQuadCurve(to: CGPoint(x: 139.454, y: 386.046), control: CGPoint(x: 139.454, y: 298.752))
 pathRef.addQuadCurve(to: CGPoint(x: 174.653, y: 546.17), control: CGPoint(x: 139.454, y: 475.835))
 pathRef.addQuadCurve(to: CGPoint(x: 269.913, y: 654.415), control: CGPoint(x: 209.852, y: 616.504))
 pathRef.addQuadCurve(to: CGPoint(x: 399.387, y: 692.326), control: CGPoint(x: 329.973, y: 692.326))
 pathRef.addQuadCurve(to: CGPoint(x: 533.292, y: 654.415), control: CGPoint(x: 464.862, y: 692.326))
 pathRef.addCurve(to: CGPoint(x: 579.647, y: 623.453), control1: CGPoint(x: 549.576, y: 645.409), control2: CGPoint(x: 565.122, y: 635.083))
 pathRef.addCurve(to: CGPoint(x: 484.801, y: 563.13), control1: CGPoint(x: 544.719, y: 609.516), control2: CGPoint(x: 510.501, y: 591.105))
 pathRef.addQuadCurve(to: CGPoint(x: 442.463, y: 454.386), control: CGPoint(x: 442.463, y: 515.741))
 pathRef.addQuadCurve(to: CGPoint(x: 470.032, y: 365.844), control: CGPoint(x: 442.463, y: 406.498))
 pathRef.addQuadCurve(to: CGPoint(x: 554.707, y: 297.754), control: CGPoint(x: 497.6, y: 325.19))
 pathRef.addCurve(to: CGPoint(x: 618.679, y: 276.382), control1: CGPoint(x: 574.975, y: 287.673), control2: CGPoint(x: 596.65, y: 281.215))
 pathRef.addCurve(to: CGPoint(x: 569.229, y: 183.024), control1: CGPoint(x: 603.087, y: 244.911), control2: CGPoint(x: 589.246, y: 212.07))
 pathRef.addQuadCurve(to: CGPoint(x: 490.708, y: 112.69), control: CGPoint(x: 537.723, y: 138.629))
 pathRef.addQuadCurve(to: CGPoint(x: 387.079, y: 86.751), control: CGPoint(x: 443.694, y: 86.751))
 pathRef.closeSubpath()
 
 /*  Drop Shadow  */
 let shadowColor = CGColor(colorSpace: colorSpace, components: [0, 0, 0, 0.65])
 
 let shadowPath = CGMutablePath()
 shadowPath.move(to: CGPoint(x: -585.102, y: 33.929))
 shadowPath.addCurve(to: CGPoint(x: -498.984, y: 47.593), control1: CGPoint(x: -555.86, y: 34.252), control2: CGPoint(x: -526.89, y: 38.929))
 shadowPath.addQuadCurve(to: CGPoint(x: -412.586, y: 91.739), control: CGPoint(x: -456.4, y: 61.31))
 shadowPath.addLine(to: CGPoint(x: -396.832, y: 45.847))
 shadowPath.addLine(to: CGPoint(x: -361.387, y: 45.847))
 shadowPath.addLine(to: CGPoint(x: -300.823, y: 270.535))
 shadowPath.addCurve(to: CGPoint(x: -290.25, y: 270.319), control1: CGPoint(x: -295.886, y: 270.281), control2: CGPoint(x: -299.408, y: 270.435))
 shadowPath.addQuadCurve(to: CGPoint(x: -180.96, y: 290.272), control: CGPoint(x: -233.143, y: 270.319))
 shadowPath.addQuadCurve(to: CGPoint(x: -113.023, y: 330.178), control: CGPoint(x: -144.037, y: 304.239))
 shadowPath.addLine(to: CGPoint(x: -92.346, y: 282.29))
 shadowPath.addLine(to: CGPoint(x: -56.901, y: 282.29))
 shadowPath.addLine(to: CGPoint(x: -4.225, y: 496.786))
 shadowPath.addLine(to: CGPoint(x: -49.516, y: 510.753))
 shadowPath.addQuadCurve(to: CGPoint(x: -164.714, y: 368.587), control: CGPoint(x: -92.838, y: 420.465))
 shadowPath.addQuadCurve(to: CGPoint(x: -295.665, y: 325.19), control: CGPoint(x: -223.789, y: 325.19))
 shadowPath.addQuadCurve(to: CGPoint(x: -373.448, y: 340.903), control: CGPoint(x: -338.987, y: 325.19))
 shadowPath.addQuadCurve(to: CGPoint(x: -425.139, y: 381.557), control: CGPoint(x: -407.909, y: 356.616))
 shadowPath.addQuadCurve(to: CGPoint(x: -442.37, y: 432.437), control: CGPoint(x: -442.37, y: 406.498))
 shadowPath.addQuadCurve(to: CGPoint(x: -429.077, y: 477.83), control: CGPoint(x: -442.37, y: 455.882))
 shadowPath.addQuadCurve(to: CGPoint(x: -388.709, y: 516.489), control: CGPoint(x: -415.785, y: 499.779))
 shadowPath.addQuadCurve(to: CGPoint(x: -300.096, y: 551.657), control: CGPoint(x: -361.633, y: 533.2))
 shadowPath.addLine(to: CGPoint(x: -171.606, y: 590.066))
 shadowPath.addQuadCurve(to: CGPoint(x: -102.93, y: 617.003), control: CGPoint(x: -147.976, y: 597.05))
 shadowPath.addQuadCurve(to: CGPoint(x: -32.778, y: 659.154), control: CGPoint(x: -57.885, y: 636.956))
 shadowPath.addQuadCurve(to: CGPoint(x: 6.606, y: 713.526), control: CGPoint(x: -7.671, y: 681.352))
 shadowPath.addQuadCurve(to: CGPoint(x: 20.882, y: 783.112), control: CGPoint(x: 20.882, y: 745.7))
 shadowPath.addQuadCurve(to: CGPoint(x: -50.747, y: 928.021), control: CGPoint(x: 20.882, y: 865.917))
 shadowPath.addQuadCurve(to: CGPoint(x: -236.097, y: 990.125), control: CGPoint(x: -122.376, y: 990.125))
 shadowPath.addQuadCurve(to: CGPoint(x: -340.956, y: 972.915), control: CGPoint(x: -294.68, y: 990.125))
 shadowPath.addQuadCurve(to: CGPoint(x: -440.893, y: 911.809), control: CGPoint(x: -387.232, y: 955.706))
 shadowPath.addLine(to: CGPoint(x: -463.539, y: 978.153))
 shadowPath.addLine(to: CGPoint(x: -497.999, y: 978.153))
 shadowPath.addLine(to: CGPoint(x: -539.815, y: 749.898))
 shadowPath.addCurve(to: CGPoint(x: -594.243, y: 753.681), control1: CGPoint(x: -557.816, y: 752.731), control2: CGPoint(x: -576.05, y: 753.488))
 shadowPath.addQuadCurve(to: CGPoint(x: -854.176, y: 633.464), control: CGPoint(x: -754.24, y: 753.681))
 shadowPath.addQuadCurve(to: CGPoint(x: -936.882, y: 396.023), control: CGPoint(x: -936.882, y: 533.699))
 shadowPath.addQuadCurve(to: CGPoint(x: -891.099, y: 212.704), control: CGPoint(x: -936.882, y: 294.761))
 shadowPath.addQuadCurve(to: CGPoint(x: -764.824, y: 82.261), control: CGPoint(x: -845.315, y: 130.647))
 shadowPath.addCurve(to: CGPoint(x: -591.29, y: 33.875), control1: CGPoint(x: -712.55, y: 50.207), control2: CGPoint(x: -652.386, y: 34.372))
 shadowPath.addLine(to: CGPoint(x: -585.102, y: 33.929))
 shadowPath.closeSubpath()
 shadowPath.move(to: CGPoint(x: -333.367, y: 642.73))
 shadowPath.addCurve(to: CGPoint(x: -344.649, y: 653.417), control1: CGPoint(x: -341.672, y: 650.759), control2: CGPoint(x: -337.889, y: 647.219))
 shadowPath.addQuadCurve(to: CGPoint(x: -461.323, y: 729.239), control: CGPoint(x: -400.77, y: 704.796))
 shadowPath.addCurve(to: CGPoint(x: -489.992, y: 739.146), control1: CGPoint(x: -470.693, y: 733.06), control2: CGPoint(x: -480.272, y: 736.341))
 shadowPath.addCurve(to: CGPoint(x: -431.293, y: 836.487), control1: CGPoint(x: -475.791, y: 774.535), control2: CGPoint(x: -455.747, y: 807.295))
 shadowPath.addQuadCurve(to: CGPoint(x: -339.233, y: 909.565), control: CGPoint(x: -389.694, y: 884.873))
 shadowPath.addQuadCurve(to: CGPoint(x: -236.589, y: 934.256), control: CGPoint(x: -288.773, y: 934.256))
 shadowPath.addQuadCurve(to: CGPoint(x: -112.53, y: 890.859), control: CGPoint(x: -165.698, y: 934.256))
 shadowPath.addQuadCurve(to: CGPoint(x: -68.223, y: 805.06), control: CGPoint(x: -68.223, y: 854.444))
 shadowPath.addQuadCurve(to: CGPoint(x: -100.223, y: 730.735), control: CGPoint(x: -68.223, y: 759.667))
 shadowPath.addQuadCurve(to: CGPoint(x: -216.405, y: 676.862), control: CGPoint(x: -132.714, y: 701.803))
 shadowPath.addLine(to: CGPoint(x: -333.367, y: 642.73))
 shadowPath.closeSubpath()
 shadowPath.move(to: CGPoint(x: -582.921, y: 86.751))
 shadowPath.addLine(to: CGPoint(x: -582.921, y: 86.751))
 shadowPath.addQuadCurve(to: CGPoint(x: -705.256, y: 122.915), control: CGPoint(x: -649.381, y: 86.751))
 shadowPath.addQuadCurve(to: CGPoint(x: -795.839, y: 228.916), control: CGPoint(x: -761.132, y: 159.08))
 shadowPath.addQuadCurve(to: CGPoint(x: -830.546, y: 386.046), control: CGPoint(x: -830.546, y: 298.752))
 shadowPath.addQuadCurve(to: CGPoint(x: -795.347, y: 546.17), control: CGPoint(x: -830.546, y: 475.835))
 shadowPath.addQuadCurve(to: CGPoint(x: -700.087, y: 654.415), control: CGPoint(x: -760.148, y: 616.504))
 shadowPath.addQuadCurve(to: CGPoint(x: -570.613, y: 692.326), control: CGPoint(x: -640.027, y: 692.326))
 shadowPath.addQuadCurve(to: CGPoint(x: -436.708, y: 654.415), control: CGPoint(x: -505.138, y: 692.326))
 shadowPath.addCurve(to: CGPoint(x: -390.353, y: 623.453), control1: CGPoint(x: -420.424, y: 645.409), control2: CGPoint(x: -404.878, y: 635.083))
 shadowPath.addCurve(to: CGPoint(x: -485.199, y: 563.13), control1: CGPoint(x: -425.281, y: 609.516), control2: CGPoint(x: -459.499, y: 591.105))
 shadowPath.addQuadCurve(to: CGPoint(x: -527.537, y: 454.386), control: CGPoint(x: -527.537, y: 515.741))
 shadowPath.addQuadCurve(to: CGPoint(x: -499.968, y: 365.844), control: CGPoint(x: -527.537, y: 406.498))
 shadowPath.addQuadCurve(to: CGPoint(x: -415.293, y: 297.754), control: CGPoint(x: -472.4, y: 325.19))
 shadowPath.addCurve(to: CGPoint(x: -351.321, y: 276.382), control1: CGPoint(x: -395.025, y: 287.673), control2: CGPoint(x: -373.35, y: 281.215))
 shadowPath.addCurve(to: CGPoint(x: -400.771, y: 183.024), control1: CGPoint(x: -366.913, y: 244.911), control2: CGPoint(x: -380.754, y: 212.07))
 shadowPath.addQuadCurve(to: CGPoint(x: -479.292, y: 112.69), control: CGPoint(x: -432.277, y: 138.629))
 shadowPath.addQuadCurve(to: CGPoint(x: -582.921, y: 86.751), control: CGPoint(x: -526.306, y: 86.751))
 shadowPath.closeSubpath()
 
 let clipPath = CGMutablePath()
 clipPath.move(to: CGPoint(x: 27.118, y: 25.875))
 clipPath.addLine(to: CGPoint(x: 996.882, y: 25.875))
 clipPath.addLine(to: CGPoint(x: 996.882, y: 998.125))
 clipPath.addLine(to: CGPoint(x: 27.118, y: 998.125))
 clipPath.closeSubpath()
 
 ctx.saveGState()
 ctx.addPath(clipPath)
 ctx.clip()
 
 ctx.translateBy(x: 0, y: 2)
 ctx.setShadow(offset: CGSize(width: (970 * scaleFactor), height: 0), blur: (5 * scaleFactor), color: shadowColor)
 ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
 ctx.addPath(shadowPath)
 ctx.fillPath()
 
 ctx.restoreGState()
 
 /*  Gradient Fill  */
 ctx.saveGState()
 ctx.addPath(pathRef)
 ctx.clip()
 
 let gradientColors: [CGFloat] = [
 0, 0.5, 1, 1,
 0.086, 0.19, 0.509, 1]
 let gradientLocations: [CGFloat] = [0, 1]
 
 guard let gradientRef = CGGradient(colorSpace: colorSpace, colorComponents: gradientColors, locations: gradientLocations, count: 2) else { return }
 ctx.drawLinearGradient(gradientRef, start: CGPoint(x: 362.218, y: 33.875), end: CGPoint(x: 362.218, y: 753.681), options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
 ctx.restoreGState()
 
 
 */


extension NSWindow {
  
  /*
   public fun setSticky(_ flag : Bool) {
   CGSConnection cid;
   CGSWindow wid;
   wid = [self windowNumber];
   if (wid < 0)
   return;
   cid = _CGSDefaultConnection();
   CGSWindowTag tags[2];
   tags[0] = tags[1] = 0;
   OSStatus retVal = CGSGetWindowTags(cid, wid, tags, 32);
   if (!retVal) {
   if (flag)
   tags[0] |= CGSTagSticky;
   else
   tags[0] &= CGSTagSticky;
   CGSSetWindowTags(cid, wid, tags, 32);
   }
   }*/
  
  public func flare() {
    let duration : Double = 2.3
    
    // CGSConnection conn = _CGSDefaultConnection();
    // var transform : CGAffineTransform = CGAffineTransform.identity
    
    // CGSGetWindowTransform(conn, [self windowNumber] , &transform);
    let size = self.frame.size
    
    let date = NSDate()
    
    var f : Double
    
    /*
     self.contentView?.wantsLayer = true
     
     
     let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
     scaleAnimation.fromValue = 1
     scaleAnimation.toValue = 9
     scaleAnimation.duration = 7.0
     
     
     self.setFrame( NSMakeRect(self.frame.origin.x-100, self.frame.origin.y-100, self.frame.width+200, self.frame.height+200), display: true, animate: false )
     self.contentView?.setFrameSize(self.frame.size)
     
     CATransaction.setCompletionBlock {
     self.close()
     }
     self.contentView?.subviews.first?.layer?.add(scaleAnimation, forKey: nil)
     CATransaction.commit()
     
     */
    
    // FIXME
    /* This should work if I
     a) make the NSImageView have a "scaling" image and
     b) make the NSImageView have constraints so that it expands with its superview
     */
    
    NSAnimationContext.runAnimationGroup( { context in
      context.duration = 2
      self.animator().setFrame( self.screen!.frame, display: true, animate: true )
      self.contentView?.animator().alphaValue = 0
    },
                                          completionHandler:  { self.close()
    })
    
    
    /*
     NSAnimationContext.runAnimationGroup({ context in
     context.duration = 10.0
     self.contentView?.animator().setFrameSize(NSSize(width: self.frame.width * 2, height: self.frame.height * 2 ))
     self.contentView?.animator().scaleUnitSquare(to: NSSize(width: 2, height: 2))
     
     self.animator().setFrame( NSMakeRect(self.frame.origin.x-100, self.frame.origin.y-100, self.frame.width+200, self.frame.height+200), display: true, animate: true )
     }, completionHandler: {self.close() } )
     */
    
    /*while (true) {
     let elapsed = -date.timeIntervalSinceNow
     if elapsed >= duration { break }
     f = elapsed/duration
     let s : CGFloat = CGFloat(0.97+3*pow(f-0.1, 2))
     // transform = transform.concatenating( CGAffineTransform(scaleX: 1/s, y: 1/s) .scaledBy(x: -size.width/2 + size.width/2*s, y: -size.height/2+size.height/2*s) )
     
     let transform = CATransform3DMakeScale(1/s, 1/s, 1)
     print(transform)
     self.contentView?.subviews.first?.layer?.transform = transform
     */
    //  CGSSetWindowAlpha(conn, [self windowNumber] , pow(1-f, 2) );
    //  CGSSetWindowTransform(conn, [self windowNumber] , newTransform);
    // }
    
  }
  
  
  
  public class func windowWithImage(_ image : NSImage) -> NSWindow {
    let windowRect = NSMakeRect(0, 0, image.size.width, image.size.height)
    let window = NSWindow.init(contentRect: windowRect, styleMask:NSWindow.StyleMask.borderless, backing:  NSWindow.BackingStoreType.buffered , defer: false)
    window.ignoresMouseEvents = true
    
    window.backgroundColor = NSColor.clear
    // window.isOpaque = true
    window.hasShadow = false
    
    let z = NSImageView.init(frame: windowRect)
    z.image = image
    z.translatesAutoresizingMaskIntoConstraints = false
    
    // STOP ME
    let jj = window.contentView!
    jj.addSubview(z)
    jj.widthAnchor.constraint(equalTo: z.widthAnchor).isActive = true
    jj.heightAnchor.constraint(equalTo: z.heightAnchor).isActive = true
    z.imageScaling = .scaleProportionallyUpOrDown
    
    /*
     window.contentView?.lockFocus()
     image.draw(at: NSZeroPoint, from:windowRect, operation: NSCompositingOperation.copy, fraction:1.0)
     window.contentView?.unlockFocus() */
    
    //  window.isAutodisplay = false
    //  window.isReleasedWhenClosed = true
    return window
  }
  
}


extension NSView {
  func setAnchorPoint(anchorPoint:CGPoint) {
    if let layer = self.layer {
      var newPoint = NSPoint(x: self.bounds.size.width * anchorPoint.x, y: self.bounds.size.height * anchorPoint.y)
      var oldPoint = NSPoint(x: self.bounds.size.width * layer.anchorPoint.x, y: self.bounds.size.height * layer.anchorPoint.y)
      
      newPoint = newPoint.applying(layer.affineTransform())
      oldPoint = oldPoint.applying(layer.affineTransform())
      
      var position = layer.position
      
      position.x -= oldPoint.x
      position.x += newPoint.x
      
      position.y -= oldPoint.y
      position.y += newPoint.y
      
      layer.position = position
      layer.anchorPoint = anchorPoint
    }
  }
}





public func showSplash( ) {
  
  let splashImage = NSImage(named: "QSLigature")!
  
  let splashWindow = NSWindow.windowWithImage(splashImage)
  splashWindow.isReleasedWhenClosed = false
  
  let screenRect = splashWindow.screen!.frame
  let windowRect =  splashWindow.frame
  let centeredRect = NSOffsetRect(windowRect, NSMidX(screenRect) - NSMidX(windowRect), NSMidY(screenRect)-NSMidY(windowRect));
  splashWindow.setFrame(centeredRect, display: false)
  
  
  
  
  // [splashWindow setAlphaValue:0];
  // Do I need this?:
  // splashWindow.setSticky( true )
  // splashWindow.animationBehavior = .none
  
  splashWindow.orderFront(nil)
  
  // FIXME:  Put this back
  
  
  let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
  rotateAnimation.fromValue = 0.0
  rotateAnimation.toValue = 2 * Double.pi
  rotateAnimation.duration = 1.0
  rotateAnimation.repeatCount = 1
  // rotateAnimation.fillMode = kCAFillModeRemoved
  
  let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
  scaleAnimation.fromValue = 0.0
  scaleAnimation.toValue = 1
  scaleAnimation.duration = 1.0
  
  /*
   let xAnimation = CABasicAnimation(keyPath: "transform")
   let size = splashWindow.frame.size
   // let s = pow(f, 2);
   // let r = -pow(1-f, 2);
   let s : CGFloat = 1.0
   let r : CGFloat = 1.0
   var t = CGAffineTransform(translationX: size.width/2, y: size.height/2);
   t = t.rotated(by: 4 * CGFloat(Double.pi) * r);
   t = t.scaledBy(x: 1/s, y: 1/s)
   t = t.translatedBy(x: -size.width/2, y:-size.height/2);
   
   
   var f = CGAffineTransform(translationX: size.width/2, y: size.height/2);
   f = f.scaledBy(x: 0, y: 0)
   f = f.translatedBy(x: -size.width/2, y: -size.height/2);
   
   var fr = CATransform3DIdentity
   fr = CATransform3DTranslate(fr, size.width/2, size.height/2, 0)
   fr = CATransform3DScale(fr, 0, 0, 1)
   // fr = CATransform3DTranslate(fr, size.width/2, size.height/2, 0)
   
   
   var tr = CATransform3DIdentity
   // tr = CATransform3DTranslate(tr, size.width/2, size.height/2, 0)
   tr = CATransform3DScale(tr, 1, 1, 1)
   tr = CATransform3DTranslate(tr, 0, 0, 0)
   
   let jf = CATransform3DMakeAffineTransform(f)
   let jt = CATransform3DMakeAffineTransform(t)
   
   xAnimation.fromValue =  fr
   xAnimation.toValue = tr
   xAnimation.duration = 1.0
   
   var yAnimation = CABasicAnimation(keyPath: "transform")
   // var tz = CATransform3DIdentity
   var tz = CATransform3DMakeRotation(-1.99 * CGFloat.pi, 0, 0, 1)
   //yAnimation.fromValue = CATransform3DIdentity
   yAnimation.toValue = tz
   yAnimation.duration = 1.0
   */
  
  splashWindow.isOpaque = false
  splashWindow.contentView?.wantsLayer = true
  
  CATransaction.setCompletionBlock {
    hideSplash(splashWindow)
  }
  
  if let cv = splashWindow.contentView?.subviews.first {
    cv.wantsLayer = true
    if let ll = cv.layer {
      
      // ll.add(xAnimation, forKey: nil)
      // ll.add(yAnimation, forKey: nil)
      
      cv.setAnchorPoint(anchorPoint: CGPoint(x:0.5, y:0.5))
      ll.add(rotateAnimation, forKey: nil)
      ll.add(scaleAnimation, forKey: nil)
    }
  }
  /*
   NSAnimationContext.runAnimationGroup( { (context) -> Void in
   context.duration = 1.0
   // splashWindow.contentView!.animator().rotate(byDegrees: 180)
   splashWindow.contentView!.animator().frameCenterRotation = CGFloat(1.3 * Double.pi)
   }, completionHandler: nil)
   */
  
  /*
   
   NSAnimationContext.runAnimationGroup({ (context) -> Void in
   context.duration = 1.0
   splashWindow.animator().
   }, completionHandler: nil)
   
   
   if let animation = QSWindowAnimation.showHelper(for: splashWindow) {
   animation.setTransformFt(QSExtraExtraEffect)
   animation.duration = 1.0
   animation.animationBlockingMode = NSAnimation.BlockingMode.blocking
   animation.start()
   }
   */
  
}

let kUseEffects = "Use Effects"

public func hideSplash(_ splashWindow: NSWindow) {
  splashWindow.level = NSWindow.Level.floating
  
  splashWindow.flare()
}

public func setupSplash() {
  if UserDefaults.standard.bool(forKey: kUseEffects) {
    showSplash()
  }
  // double delayInSeconds = 0.1;
  // FIXME: pop down the splash
  /*        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
   dispatch_after(popTime, dispatch_get_current_queue(), ^(void) {
   // hide the splash in a background thread
   [self hideSplash:nil];
   });
   */
  // }
}

