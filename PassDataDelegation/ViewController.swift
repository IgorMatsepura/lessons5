//
//  ViewController.swift
//  PassDataDelegation
//
//  Created by IgorMac on 3/9/18.
//  Copyright © 2018 IgorMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VCFinalDelegate {

    @IBAction func btnPerformSeguePressed(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinal {
            destination.delegate = self
        }
    }
    func finishPassing(string: String) {
        print("Notified")
        print(string)
    }
}

