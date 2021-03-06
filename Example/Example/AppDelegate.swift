//
//  AppDelegate.swift
//  Example
//
//  Created by Michael Schwarz on 18.12.17.
//  Copyright © 2017 IdeasOnCanvas GmbH. All rights reserved.
//

import Cocoa
import Ashton

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var baseTextView: NSTextView!
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var roundTripTextView: NSTextView!
    @IBOutlet weak var htmlTextView: NSTextView!

    @IBAction func executeRoundTrip(_ sender: Any) {
        guard let attributedString = self.baseTextView.textStorage else { return }

        let html = Ashton.encode(attributedString)
        self.htmlTextView.string = html
        let roundTrip = Ashton.decode(html)
        self.roundTripTextView.textStorage?.setAttributedString(roundTrip)
    }
}

