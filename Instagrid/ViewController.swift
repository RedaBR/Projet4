//
//  ViewController.swift
//  Instagrid
//
//  Created by Reda on 23/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var imagePicker:UIImagePickerController!
    var img = UIImageView()
    var state = 0
    var clickedImg = -1
    
    
    
    @IBOutlet var mainView: UIView!

    
    
    @IBAction func button1() {
    }
    @IBOutlet weak var select1: UIImageView!
    
    
    @IBAction func button2() {
    }
    @IBOutlet weak var selected2: UIImageView!
    
    
    @IBAction func button3() {
    }
    @IBOutlet weak var selected3: UIImageView!
    
    
}
    //override func viewDidLoad() {
       // super.viewDidLoad()
        
     
        
       // let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: //#selector(self.swipeAction))
        //swipeGestureRecognizer.direction = .up
       // swipeView.addGestureRecognizer(swipeGestureRecognizer)
   // }
    
    //@objc func swipeAction() {
       // let share = UIActivityViewController(activityItems: [img], applicationActivities:nil)
      //  present(share, animated: true, completion: nil)
   // }

    
    //func takePhoto() {
       // imagePicker = UIImagePickerController()
       // imagePicker.delegate = self
       // imagePicker.sourceType = .photoLibrary
       // present(imagePicker, animated: true, completion: nil)
        
    //}
    
   // func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //imagePicker.dismiss(animated: true, completion: nil)
       // clickedImg = -1
   // }
    
    
    //func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //picker.dismiss(animated: true, completion: nil)
        //guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            //return
       // }
        //img.image = image
    
   // }
    
    
    


