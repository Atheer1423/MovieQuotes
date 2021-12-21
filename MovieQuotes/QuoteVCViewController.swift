//
//  QuoteVCViewController.swift
//  MovieQuotes
//
//  Created by admin on 21/12/2021.
//

import UIKit

class QuoteVCViewController: UIViewController {
  
    

    @IBOutlet weak var QuoteLabel: UILabel!
    var quote:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        QuoteLabel.text = quote
       
    }
 
}
