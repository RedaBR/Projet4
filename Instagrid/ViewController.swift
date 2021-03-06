//
//  ViewController.swift
//  Instagrid
//
//  Created by Reda on 23/08/2021.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    var img = UIImageView()
    var state = 0
    var clickedImg = -1
    var swipeGesture = UISwipeGestureRecognizer()
  
    
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var container: UIView!
    
    
    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var swipeText: UILabel!
    
    @IBOutlet weak var arrow: UIImageView!
    

    @IBOutlet weak var viewTopLeft: UIView!
    @IBOutlet weak var imgTopLeft: UIImageView!
    
    @IBAction func buttonTopLeft() {
        clickedImg = 0
        takePhoto()
    }
    
    
    @IBOutlet weak var imgTopRight: UIImageView!
    
    
    @IBAction func buttonTopRight() {
        clickedImg = 1
        takePhoto()
    }
    
    
    @IBOutlet weak var viewBottomRight: UIView!
    
    @IBOutlet weak var ImgBottomLeft: UIImageView!
    
    @IBAction func buttonBottomLeft() {
        clickedImg = 2
        takePhoto()
    }
    
    @IBOutlet weak var imgBottomRight: UIImageView!
    
    @IBAction func buttonBottomRight() {
        clickedImg = 3
        takePhoto()
    }
    
    @IBAction func button1() {
        select1.isHidden = false
        selected2.isHidden = true
        selected3.isHidden = true
        viewBottomRight.isHidden = false
        viewTopLeft.isHidden = true
        //removeImage(imgSelected1: imgTopLeft.image! , imgSelected2: imgTopRight.image! , imgSelected3: ImgBottomLeft.image! , imgSelected4: imgBottomRight.image!)
        
    }
    @IBOutlet weak var select1: UIImageView!
    
    
    @IBAction func button2() {
        select1.isHidden = true
        selected2.isHidden = false
        selected3.isHidden = true
        viewTopLeft.isHidden = false
        viewBottomRight.isHidden = true
        //checkImg()
        //removeImage(imgSelected1: imgTopLeft.image! , imgSelected2: imgTopRight.image! , imgSelected3: ImgBottomLeft.image! , imgSelected4: imgBottomRight.image!)
        
    }
    @IBOutlet weak var selected2: UIImageView!
    
    
    @IBAction func button3() {
        select1.isHidden = true
        selected2.isHidden = true
        selected3.isHidden = false 
        viewBottomRight.isHidden = false
        viewTopLeft.isHidden = false
        //removeImage(imgSelected1: imgTopLeft.image! , imgSelected2: imgTopRight.image! , imgSelected3: ImgBottomLeft.image! , imgSelected4: imgBottomRight.image!)
        
        
    }
    @IBOutlet weak var selected3: UIImageView!

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to:size, with:coordinator)
        checkOrientation()
        
    }
    override func viewDidLoad() {
    mainView.isHidden = false
        viewTopLeft.isHidden = true
        
        swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction))
        swipeView.addGestureRecognizer(swipeGesture)
        checkOrientation()
     
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        checkOrientation()
    }
    @objc func swipeAction() {
        if swipeGesture.direction == .up {
            UIView.animate(withDuration: 0.3, animations: {
                self.container.transform = CGAffineTransform(translationX:0, y:self.view.frame.height)
            },completion: {
                _ in self.share()
            }
            )        } else if swipeGesture.direction == .left {
                UIView.animate(withDuration: 0.3, animations: {
                    self.container.transform = CGAffineTransform(translationX:self.view.frame.height, y:0)
                },completion: {
                    _ in self.share()
                }
                )
                }
    
        if (img.image == nil) {
            return
        }
   }
    
    func share () {
        let share = UIActivityViewController(activityItems: [img.image!], applicationActivities:nil)
       present(share, animated: true, completion: nil)
        share.completionWithItemsHandler = { _, _, _, _ in  UIView.animate(withDuration: 0.3){
            self.container.transform = .identity
        }
        
        }
        
    }
    
    func checkOrientation() {
        if UIDevice.current.orientation.isLandscape {
         
            arrow.image = UIImage.init(named: "Arrow Left")
            swipeText.text = "Swipe left to share"
            swipeGesture.direction = .left
        }
        else if UIDevice.current.orientation.isPortrait {
            arrow.image = UIImage.init(named: "Arrow Up")
            swipeText.text = "Swipe up to share"
            swipeGesture.direction = .up
        }
    }
    
  
    
 
    func addImage () {
        if clickedImg == 0 {
            imgTopLeft.image = img.image
            imgTopLeft.contentMode = .scaleAspectFill
        } else if clickedImg == 1 {
            imgTopRight.image = img.image
            imgTopRight.contentMode = .scaleAspectFill
        } else if clickedImg == 2 {
            ImgBottomLeft.image = img.image
            ImgBottomLeft.contentMode = .scaleAspectFill
        } else if clickedImg == 3 {
            imgBottomRight.image = img.image
            imgBottomRight.contentMode = .scaleAspectFill
        }
    }
    
    //func removeImage(imgSelected1:UIImage , imgSelected2:UIImage , imgSelected3:UIImage , imgSelected4 : UIImage ) {
        //imgTopLeft.image = .init(imageLiteralResourceName: "Plus")
        //imgTopLeft.contentMode = .center
       // imgTopRight.image = .init(imageLiteralResourceName: "Plus")
        //imgTopRight.contentMode = .center
        
        //ImgBottomLeft.image = .init(imageLiteralResourceName: "Plus")
       // ImgBottomLeft.contentMode = .center
        //imgBottomRight.image = .init(imageLiteralResourceName: "Plus")
        //imgBottomRight.contentMode = .center
        
    }

extension ViewController : UIImagePickerControllerDelegate {
    
    func takePhoto() {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
   func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true, completion: nil)
       clickedImg = -1
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        img.image = image
        addImage()
    
    }
    
}
