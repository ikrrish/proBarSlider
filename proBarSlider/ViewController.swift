//
//  ViewController.swift
//  proBarSlider
//
//  Created by R82 on 29/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var prBar: UIProgressView!
   
    var time = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        prBar.progress = 0.0
        progress()
    }

    func progress(){
        var a = 0.0
        //self.prBar.progress = a
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { iimer in
            a+=0.01
            self.prBar.progress = Float(a)
            if self.prBar.progress == 1.0{
                self.time.invalidate()
                self.view.backgroundColor = .red
            }
        
        })
    }
}

