//
//  ViewController.swift
//  Page progress bar
//
//  Created by Bruno Lopes de Mello on 23/01/2018.
//  Copyright © 2018 Bruno Lopes de Mello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBar = self.navigationController?.navigationBar
        let navBarHeight = navBar?.frame.height
        let ProgressFrame = self.progressBar.frame
        let pSetX = ProgressFrame.origin.x
        let pSetY = CGFloat(navBarHeight!)
        let pSetWidth = self.view.frame.width
        let pSetHight = ProgressFrame.height
        
        self.progressBar.frame = CGRect.init(x: pSetX, y: pSetY, width: pSetWidth, height: pSetHight)
        self.navigationController?.navigationBar.addSubview(self.progressBar)
        self.progressBar.setProgress(0.1, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! Tela1ViewController
        controller.delegate = self
    }
    
    func setProgressBar(value: Float) {
        self.progressBar.setProgress(value, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

