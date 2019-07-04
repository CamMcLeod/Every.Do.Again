//
//  DetailViewController.swift
//  Every.Do.Again
//
//  Created by Cameron Mcleod on 2019-07-03.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                
                if let title = detail.title, let todoDescription = detail.todoDescription {
                    
                    label.text = title + " - " + todoDescription + " - Priority Level : " + String(detail.priorityNumber)
                    
                }
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

