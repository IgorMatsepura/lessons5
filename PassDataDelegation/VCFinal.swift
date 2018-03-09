//
//  VCFinal.swift
//  PassDataDelegation
//
//  Created by IgorMac on 3/9/18.
//  Copyright © 2018 IgorMac. All rights reserved.
//

import UIKit

protocol VCFinalDelegate {
    func finishPassing(string: String)
}

class VCFinal: UIViewController {

    var delegate: VCFinalDelegate?
    
    @IBAction func btnPassDataPressed(_ sender: Any) {
        delegate?.finishPassing(string: "Sent from VCFinal")
    }
    
}
