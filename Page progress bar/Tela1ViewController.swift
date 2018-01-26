//
//  Tela1ViewController.swift
//  Page progress bar
//
//  Created by Bruno Lopes de Mello on 23/01/2018.
//  Copyright © 2018 Bruno Lopes de Mello. All rights reserved.
//

import UIKit

class Tela1ViewController: UIViewController {

    var delegate: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate.setProgressBar(value: 0.5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! Tela2ViewController
        controller.delegate = self.delegate
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.delegate.setProgressBar(value: 0.1)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
