//
//  FlipCell.swift
//  D_M5_Ass_8_iOs
//
//  Created by Dharmesh N. Agravat on 19/03/23.
//

import UIKit

class FlipCell: UITableViewCell {
    @IBOutlet weak var colVW: UICollectionView!
    static let id = "FlipCell"
    
    var detailObj: ImageAndDetails?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colVW.delegate = self
        colVW.dataSource = self
        colVW.register(UINib(nibName: BannerCell.id, bundle: nil), forCellWithReuseIdentifier: BannerCell.id)
        colVW.register(UINib(nibName: CategoryCell.id, bundle: nil), forCellWithReuseIdentifier: CategoryCell.id)
        colVW.register(UINib(nibName: OfferCell.id, bundle: nil), forCellWithReuseIdentifier: OfferCell.id)
        colVW.register(UINib(nibName: ProductCell.id, bundle: nil), forCellWithReuseIdentifier: ProductCell.id)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension FlipCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        detailObj?.img.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if detailObj?.label == "Banner" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCell.id, for: indexPath) as? BannerCell ?? BannerCell()
            cell.imgVW.image = UIImage(named: detailObj?.img[indexPath.row] ?? "")
            return cell
        } else if detailObj?.label == "Category" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.id, for: indexPath) as? CategoryCell ?? CategoryCell()
            cell.imgVW.image = UIImage(named: detailObj?.img[indexPath.row] ?? "")
            return cell
        } else if detailObj?.label == "Offer" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OfferCell.id, for: indexPath) as? OfferCell ?? OfferCell()
            cell.imgVW.image = UIImage(named: detailObj?.img[indexPath.row] ?? "")
            return cell
        } else if detailObj?.label == "Products" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.id, for: indexPath) as? ProductCell ?? ProductCell()
            cell.imgVW.image = UIImage(named: detailObj?.img[indexPath.row] ?? "")
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if detailObj?.label == "Banner" {
            return 0
        } else if detailObj?.label == "Category" {
            return 10
        } else if detailObj?.label == "Offer" {
            return 10
        } else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if detailObj?.label == "Banner" {
            return CGSize(width: collectionView.frame.width, height: 200)
        } else if detailObj?.label == "Category" {
            return CGSize(width: 80, height: 80 )
        } else if detailObj?.label == "Offer" {
            return CGSize(width: 100, height: 100)
        } else {
            return CGSize(width: 90, height: 120)
        }
        
    }
}
