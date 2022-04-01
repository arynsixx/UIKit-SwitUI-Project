//
//  ContactsViewController.swift
//  Prova2conUIKit
//
//  Created by Martina Esposito on 31/03/22.
//

import UIKit
import SwiftUI

class ContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func toContactsSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContactsSwiftUIView())
    }
}
