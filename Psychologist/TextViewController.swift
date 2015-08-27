//
//  TextViewController.swift
//  Psychologist
//
//  Created by Matthew Allen Lin on 8/25/15.
//  Copyright (c) 2015 Matthew Allen Lin. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = text    //TextView is being set by the system
        }
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }
}
