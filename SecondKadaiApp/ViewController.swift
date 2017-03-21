//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 小林秀太 on 2017/03/21.
//  Copyright © 2017年 Shuta Kobayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }
    
    @IBOutlet weak var Text: UITextField!
    
    @IBAction func Launch(_ sender: Any) {
        print(Text.text!)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
         resultViewController.Text = Text.text!
        
    }
    
}

