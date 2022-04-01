//
//  ViewController.swift
//  Prova2conUIKit
//
//  Created by Martina Esposito on 31/03/22.
//

import UIKit
import SwiftUI

class TabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func showAddNewContact(_ sender: UIBarButtonItem) {
        
        guard presentedViewController == nil else {
            dismiss(animated: true, completion: {
                self.showAddNewContact(sender)
            })
            return
        }
        
        if let AddViewController = self.storyboard?.instantiateViewController(withIdentifier: "newContact") {
            AddViewController.modalPresentationStyle = .formSheet
//            if let popover = AddViewController.popoverPresentationController {
//                popover.barButtonItem = sender
                
//                let sheet = popover.adaptiveSheetPresentationController
//                sheet.detents = [.medium()]
                if let sheet = AddViewController.sheetPresentationController{
                    
                   sheet.detents = [.medium(), .large()]
//                }
                sheet.largestUndimmedDetentIdentifier =
                PresentationHelper.sharedInstance.largestUndimmedDetentIdentifier
                sheet.prefersScrollingExpandsWhenScrolledToEdge =
                PresentationHelper.sharedInstance.prefersScrollingExpandsWhenScrolledToEdge
                sheet.prefersEdgeAttachedInCompactHeight =
                PresentationHelper.sharedInstance.prefersEdgeAttachedInCompactHeight
                sheet.widthFollowsPreferredContentSizeWhenEdgeAttached =
                PresentationHelper.sharedInstance.widthFollowsPreferredContentSizeWhenEdgeAttached
                }
//            }
            
            present(AddViewController, animated: true, completion: nil)
        }
    }
    
}

