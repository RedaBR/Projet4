//
//  ViewController.swift
//  Instagrid
//
//  Created by Reda on 23/08/2021.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var imagePicker:UIImagePickerController!
    var img = UIImageView()
    var state = 0
    var clickedImg = -1
    
    @IBOutlet weak var selected: UIImageView!
    @IBOutlet weak var selected2: UIImageView!
    @IBOutlet weak var selected3: UIImageView!
    
    @IBOutlet weak var container: UIView!
    
    
    @IBOutlet weak var grid1: UIView!
    @IBOutlet weak var img1G1: UIImageView!
    @IBOutlet weak var img2G1: UIImageView!
    @IBOutlet weak var img3G1: UIImageView!
    
    
    @IBOutlet weak var grid2: UIView!
    @IBOutlet weak var img1G2: UIImageView!
    @IBOutlet weak var img2G2: UIImageView!
    @IBOutlet weak var img3G2: UIImageView!
    
    
    @IBOutlet weak var grid3: UIView!
    
    @IBOutlet weak var img1G3: UIImageView!
    @IBOutlet weak var img2G3: UIImageView!
    @IBOutlet weak var img3G3: UIImageView!
    @IBOutlet weak var img4G3: UIImageView!
    
    @IBOutlet weak var swipeView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        container.isHidden = true
        
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeAction))
        swipeGestureRecognizer.direction = .up
        swipeView.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @objc func swipeAction() {
        let share = UIActivityViewController(activityItems: [img], applicationActivities:nil)
        present(share, animated: true, completion: nil)
    }
    
    @IBAction func buttonSelected() {
        state = 0
        displaySelection(selection: state)
    }
    
    @IBAction func buttonSelected2() {
        state = 1
        displaySelection(selection: state)
    }
    
    @IBAction func buttonSelected3() {
        state = 2
        displaySelection(selection: state)
    }
    
    func displaySelection(selection:Int) {
        
        selected.isHidden = (selection != 0)
        selected2.isHidden = (selection != 1)
        selected3.isHidden = (selection != 2)
        
        grid1.isHidden = (selection != 0)
        grid2.isHidden = (selection != 1)
        grid3.isHidden = (selection != 2)
        
        container.isHidden = false
    }
    
    
    @IBAction func button1G1() {
        clickedImg = 0
        takePhoto()
    }
    
    @IBAction func button2G1() {
        clickedImg = 1
        takePhoto()
    }
    
    @IBAction func button3G1() {
        clickedImg = 2
        takePhoto()
    }
    
    
    @IBAction func button1G2() {
        clickedImg = 0
        takePhoto()
    }
    
    @IBAction func button2G2() {
        clickedImg = 1
        takePhoto()
    }
    
    @IBAction func button3G2() {
        clickedImg = 2
        takePhoto()
    }
    
    @IBAction func button1G3() {
        clickedImg = 0
        takePhoto()
    }
    
    @IBAction func button2G3() {
        clickedImg = 1
        takePhoto()
    }
    
    @IBAction func button3G3() {
        clickedImg = 2
        takePhoto()
    }
    
    @IBAction func button4G3(){
        clickedImg = 3
        takePhoto()
    }
    
    
    func addImage(){
        
        switch state {
        
        case 0:
            if (clickedImg == 0) {
                img1G1.image = img.image
                img1G1.contentMode = .scaleAspectFill
            } else if (clickedImg == 1) {
                img2G1.contentMode = .scaleAspectFill
                img2G1.image = img.image
            } else if(clickedImg == 2) {
                img3G1.contentMode = .scaleAspectFill
                img3G1.image = img.image }
            
        case 1:
            
            if (clickedImg == 0) {
                img1G2.image = img.image
            } else if (clickedImg == 1) {
                img2G2.image = img.image
            } else if(clickedImg == 2) {
                img3G2.image = img.image }
            
            
        case 2:
            
            if (clickedImg == 0) {
                img1G3.image = img.image
            } else if (clickedImg == 1) {
                img2G3.image = img.image
            } else if (clickedImg == 2) {
                img3G3.image = img.image }
            else if (clickedImg == 3) {
                img4G3.image = img.image   }
            
        default:break
            
            
        }
        
        clickedImg = -1
    }
    
    
    
    
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

