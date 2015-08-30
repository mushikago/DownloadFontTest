//
//  ViewController.swift
//  DownloadFontTest
//
//  Created by Tetsuya Shiraishi on 2015/08/31.
//  Copyright (c) 2015年 Tetsuya Shiraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var wv: UIWebView!
    @IBAction func btn1(sender: AnyObject) {
        
        DBLDownloadFont.setFontNameWithBlock({ (success:Bool, error:String!) -> Void in
            self.lbl1.text = "loaded !"
        }, fontName: "HiraMaruProN-W4")
        
        lbl1.text = "loading..."
        
    }
    @IBAction func btn2(sender: AnyObject) {
        lbl2.font = UIFont(name: "HiraMaruProN-W4", size: lbl2.font.pointSize)
    }
    @IBAction func btn3(sender: AnyObject) {
        
        let path : String = NSBundle.mainBundle().pathForResource("font", ofType: "html")!
        wv.loadRequest(NSURLRequest(URL: NSURL(string: path)!))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

