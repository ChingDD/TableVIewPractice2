//
//  ViewController.swift
//  不同Cell樣式的TableVIew練習
//
//  Created by 林仲景 on 2023/4/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var trainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trainImageView.image = UIImage(named: "train")
        trainImageView.contentMode = .scaleAspectFill
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
