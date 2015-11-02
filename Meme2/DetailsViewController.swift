//
//  DetailsViewController.swift
//  Meme2
//
//  Created by Gilles on 11/1/15.
//  Copyright © 2015 gillesvdp. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var detailsImage: UIImageView!
    var meme : Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsImage.image = meme.finalImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
