//
//  TableViewCell.swift
//  D_M5_Ass_8_iOs
//
//  Created by Dharmesh N. Agravat on 19/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    var detailsObject : ImageAndDetails?
    
    @IBOutlet weak var colView: UICollectionView!
    static let id = "TableViewCell"
    var timer = Timer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colView.delegate = self
        colView.dataSource = self
        
        colView.register(UINib(nibName: CollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: CollectionViewCell.id)
        colView.register(UINib(nibName: SecondCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: SecondCollectionViewCell.id)
        colView.register(UINib(nibName: ThirdCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: ThirdCollectionViewCell.id)
        colView.register(UINib(nibName: FourthCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: FourthCollectionViewCell.id)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @objc func relod(){
        if self.colView.tag + 1 == self.detailsObject?.img.count ?? 0 {
            self.colView.tag = 0
        } else {
            self.colView.tag += 1
        }
        
        self.colView.scrollToItem(at: IndexPath(item: self.colView.tag, section: 0), at: .left, animated: true)
    }

}

extension TableViewCell {
    func setUpTimer() {
        if detailsObject?.label == "Banner" {
            timer.invalidate()
            colView.tag = 0
            timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(relod), userInfo: nil, repeats: true)
        }
    }
}

extension TableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        setUpTimer()
        return detailsObject?.img.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if detailsObject?.label == "Banner" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.id, for: indexPath) as? CollectionViewCell
            cell?.imgView.image = UIImage(named: detailsObject?.img[indexPath.row] ?? "")
            cell?.imgView.contentMode = .scaleAspectFill
            
            return cell ?? CollectionViewCell()
            
        } else if detailsObject?.label == "Category" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondCollectionViewCell.id, for: indexPath) as? SecondCollectionViewCell
            
            
            cell?.layer.cornerRadius = (cell?.frame.height ?? 0)/2
            // this should alleviate the performance hit that adding transparency may cause - see http://stackoverflow.com/a/6254531/189804
            // Be sure to check scrolling performance with Instruments if you take this approach.
            cell?.layer.shouldRasterize = true
            cell?.clipsToBounds = true // All parts of the image that are outside its bounds (the frame) are cut out (makes the rounded corners visible)
            
            cell?.secondimgView.image = UIImage(named: detailsObject?.img[indexPath.row] ?? "")
            cell?.secondimgView.contentMode = .scaleAspectFill
            
            cell?.secondLbl.text = detailsObject?.title[indexPath.row] ?? ""
            return cell ?? SecondCollectionViewCell()
            
        } else if detailsObject?.label == "Offer" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdCollectionViewCell.id, for: indexPath) as? ThirdCollectionViewCell
            cell?.thirdimgView.image = UIImage(named: detailsObject?.img[indexPath.row] ?? "")
            cell?.thirdimgView.contentMode = .scaleAspectFill
            
            cell?.thirdLabel.text = detailsObject?.title[indexPath.row] ?? ""
            return cell ?? ThirdCollectionViewCell()
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FourthCollectionViewCell.id, for: indexPath) as? FourthCollectionViewCell
            cell?.fourthimgView.image = UIImage(named: detailsObject?.img[indexPath.row]  ?? "")
            cell?.fourthimgView.contentMode = .scaleAspectFill
            
            cell?.fourthLabel.text = detailsObject?.title[indexPath.row] ?? ""
            return cell ?? FourthCollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if detailsObject?.label == "Banner" {
            return 0
        } else if detailsObject?.label == "Category" {
            return 10
        } else if detailsObject?.label == "Offer" {
            return 10
        } else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if detailsObject?.label == "Banner" {
            return CGSize(width: collectionView.frame.width, height: 280)
        } else if detailsObject?.label == "Category" {
            return CGSize(width: 120, height: 120)
        } else if detailsObject?.label == "Offer" {
            return CGSize(width: 100, height: 150)
        } else {
            return CGSize(width: 90, height: 170)
        }
        
    }
}
