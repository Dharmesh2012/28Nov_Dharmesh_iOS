//
//  ViewController.swift
//  D_M5_Ass_6_iOs
//
//  Created by Dharmesh N. Agravat on 17/02/23.
//


//Make an app to increase height of each cell.

import UIKit

class ViewController: UIViewController {

    var arrOfDetails = ["Everything you can imagine is real.", "A woman finds a pot of treasure on the road while she is returning from work.Delighted (very happy) with her luck, she decides to keep it. As she is taking it home, it keeps changing.However, her enthusiasm refuses to fade away (disappear or faint slowly).What Is Great About It: The old lady in this story is one of the most cheerful characters anyone can encounter in English fiction.", "Live as if you were to die tomorrow", "This classic fable (story) tells the story of a very slow tortoise (turtle) and a speedy hare (rabbit).The tortoise challenges the hare to a race. The hare laughs at the idea that a tortoise could run faster than he, but the race leads to surprising results.", "Timmie Willie is a country mouse who is accidentally taken to a city in a vegetable basket. When he wakes up, he finds himself at a party and makes a friend.When he is unable to bear (tolerate or experience) the city life, he returns to his home but invites his friend to the village.When his friend visits him, something similar happens.What Is Great About It: Humans have been living without cities or villages for most of history.", "Tomorrow is now.", "It always seems impossible until it's done.", "If you can't do great things, do small things in a great way.", "Learn to live with less so that you appreciate more.", "Ruskin Bond used to spend his summer at his grandmother’s house in Dehradun.While taking the train, he always had to pass through a small station called Deoli. No one used to get down at the station and nothing happened there.Until one day he sees a girl selling fruit and he is unable to forget her.What Is Great About It: Ruskin Bond is a writer who can communicate deep feelings in a simple way."]
    
    @IBOutlet weak var tblviewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
let colorList: [UIColor] = [.red, .green, .link, .yellow, .gray, .cyan, .magenta, .black, .tintColor, .systemPink, .brown]
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        cell?.lblText.text = arrOfDetails[indexPath.row]
//        cell?.backgroundColor = colorList[indexPath.row]
        switch indexPath.row {
        case 0: cell?.backgroundColor = .red
        case 1: cell?.backgroundColor = .gray
        
        default:
            cell?.backgroundColor = .green
        }
//        if indexPath.row == 0 {
//            cell?.backgroundColor = UIColor.red
//        } else if indexPath.row == 1 {
//            cell?.backgroundColor = UIColor.green
//        }  else if indexPath.row == 2 {
//            cell?.backgroundColor = UIColor.link
//        }  else if indexPath.row == 3 {
//            cell?.backgroundColor = UIColor.yellow
//        }  else if indexPath.row == 4 {
//            cell?.backgroundColor = UIColor.gray
//        }  else if indexPath.row == 5 {
//            cell?.backgroundColor = UIColor.cyan
//        }  else if indexPath.row == 6 {
//            cell?.backgroundColor = UIColor.magenta
//        }  else if indexPath.row == 7 {
//            cell?.backgroundColor = UIColor.black
//        }  else if indexPath.row == 8 {
//            cell?.backgroundColor = UIColor.tintColor
//        }  else if indexPath.row == 9 {
//            cell?.backgroundColor = UIColor.systemPink
//        }  else if indexPath.row == 10 {
//            cell?.backgroundColor = UIColor.brown
//        }
        
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    
}
