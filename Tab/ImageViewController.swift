//
//  ViewController.swift
//  ImageView
//
//  Created by Siyun Min on 2020/06/29.
//  Copyright © 2020 Siyun Min. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "1.jpg")
        imgOff = UIImage(named: "2.jpg")
        
        imgView.image = imgOn
        
        // Do any additional setup after loading the view.
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) {
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        } else {
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }

}

