//
//  ViewController.swift
//  D_M4_Ass_6&7_iOs
//
//  Created by Dharmesh N. Agravat on 09/02/23.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    // 6, Make an app to show background image within imageview.
    // 7, Make an app to take three imageview and three button then pickup images from gallery and show image within particular image view.
  
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgThree: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    
    var imagePicker : UIImagePickerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage.init(named: "backg2")
        backgroundImage.contentMode = .scaleAspectFill
    }

    @IBAction func btnOne(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            imagePicker = UIImagePickerController()
            imagePicker?.delegate = self
            imagePicker?.sourceType = .savedPhotosAlbum
            imagePicker?.allowsEditing = false
            
            present(imagePicker ?? UIViewController(), animated: true, completion: nil)
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[.originalImage] as? UIImage else {
            print("error")
            return
        }
            imgOne.image = image
            imgOne.contentMode = .scaleAspectFill
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            imagePicker = UIImagePickerController()
            imagePicker?.delegate = self
            imagePicker?.sourceType = .savedPhotosAlbum
            imagePicker?.allowsEditing = false
            
            present(imagePicker ?? UIViewController(), animated: true, completion: nil)
        }
    }
    @IBAction func btnThree(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            imagePicker = UIImagePickerController()
            imagePicker?.delegate = self
            imagePicker?.sourceType = .savedPhotosAlbum
            imagePicker?.allowsEditing = false
            
           present(imagePicker ?? UIViewController(), animated: true, completion: nil)
        }
    }

}

