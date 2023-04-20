//
//  ViewController.swift
//  D_M5_Ass_10_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//

//set background color and bar button color in uinavigationbar.

import UIKit
import AVFoundation
import AVKit
class ViewController: UIViewController {
    var myplayer = AVPlayerViewController()
    var playerobj = AVPlayer()
    
    @IBOutlet weak var imgViewFirstPage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var navigationBarAppearace = UINavigationBar.appearance()
//        navigationBarAppearace.backgroundColor = UIColor.purple
        UINavigationBar.appearance().backgroundColor = .red
        imgViewFirstPage.image = UIImage(named: "ambarSeToda")
        imgViewFirstPage.contentMode = .scaleAspectFill
    }

    @IBAction func nextBtn(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "seVC") as? SecondViewController
        navigationController?.pushViewController(nav ?? UIViewController(), animated: true)
    }
    
    @IBAction func playMp3Btn(_ sender: Any) {
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "ambarSong", ofType: "mp3") ?? "")
        playerobj = AVPlayer(url: path)
        myplayer.player = playerobj
        playerobj.play()
        playerobj.volume = 10
        present(myplayer, animated: true, completion: nil)
    }
}

