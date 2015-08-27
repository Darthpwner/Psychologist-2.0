//
//  DiagnosedHappinessViewController.swift
//  Psychologist
//
//  Created by Matthew Allen Lin on 8/26/15.
//  Copyright (c) 2015 Matthew Allen Lin. All rights reserved.
//

import UIKit

class DiagnosedHappinessViewController: HappinessViewController {
    var diagnosticHistory = [Int]()
    
    private struct History {
        static let SegueIdentifier = "Show Diagnostic History"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case History.SegueIdentifier:
                if let tvc = segue.destinationViewController as? TextViewController {
                    tvc.text = "\(diagnosticHistory)"
                }
            default: break
            }
        }
    }
}