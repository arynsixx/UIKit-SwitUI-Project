//
//  RecentsViewController.swift
//  Prova2conUIKit
//
//  Created by Martina Esposito on 31/03/22.
//

import UIKit
import SwiftUI

class RecentsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func toRecentsSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: RecentsSwiftUIView())
    }
}
