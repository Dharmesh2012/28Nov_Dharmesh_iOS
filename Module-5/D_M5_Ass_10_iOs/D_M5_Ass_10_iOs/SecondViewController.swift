//
//  SecondViewController.swift
//  D_M5_Ass_10_iOs
//
//  Created by Dharmesh N. Agravat on 14/04/23.
//

import UIKit
import AVFoundation
import AVKit

class SecondViewController: UIViewController {
    var myplayer = AVPlayerViewController()
    var playerobj = AVPlayer()
    @IBOutlet weak var imgViewSecond: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        imgViewSecond.image = UIImage(named: "ambarSeTodamp3")
        imgViewSecond.contentMode = .scaleAspectFit
       
    }
    

    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnMp4Play(_ sender: Any) {
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "ambarVideo", ofType: "mp4") ?? "")
        playerobj = AVPlayer(url: path)
        myplayer.player = playerobj
        playerobj.play()
       // playerobj.volume = 5
        present(myplayer, animated: true, completion: nil)
    }
    
}
