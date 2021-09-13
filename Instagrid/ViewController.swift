//
//  ViewController.swift
//  Instagrid
//
//  Created by Reda on 23/08/2021.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    var imagePicker:UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        container.isHidden = true
        
    }
    
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
    
    @IBAction func button4G3() {
        clickedImg = 3
        takePhoto()
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
    

    
    func addImage(img:UIImage) {
        switch (state) {
            case 0:
                if (clickedImg == 0) {
                    img1G1.image = img
                } else if (clickedImg == 1) {
                    img2G1.image = img
                }
                break
            case 1: break
            case 2: break
            default: break
        }
    }
 
}

