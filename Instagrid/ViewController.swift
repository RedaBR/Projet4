//
//  ViewController.swift
//  Instagrid
//
//  Created by Reda on 23/08/2021.
//

import UIKit

class ViewController: UIViewController {

    //var imagePicker:UIImagePickerController!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        container.isHidden = true
        
    }
    
    var state = 0
    var image1:UIImage?
    var image2:UIImage?

    @IBOutlet weak var selected: UIImageView!
    
    
    @IBOutlet weak var selected2: UIImageView!
    
    
    
    @IBOutlet weak var selected3: UIImageView!
    
    
    @IBOutlet weak var container: UIView!
    
    
    @IBOutlet weak var grid1: UIView!
    
    @IBOutlet weak var img1D1: UIImageView!
    
    @IBOutlet weak var img2D1: UIImageView!
    
    @IBOutlet weak var img3D1: UIImageView!
    
    
    @IBOutlet weak var grid2: UIView!
    
    
    
    @IBOutlet weak var img1D2: UIImageView!
    
    @IBOutlet weak var img2D2: UIImageView!
    
    @IBOutlet weak var img3D2: UIImageView!
    

    @IBOutlet weak var grid3: UIView!
    
    
    @IBOutlet weak var img1D3: UIImageView!
    
    @IBOutlet weak var img2D3: UIImageView!
    
    @IBOutlet weak var img3D3: UIImageView!
    
    @IBOutlet weak var img4D3: UIImageView!
    

    @IBAction func buttonSelected() {
        
        selected.isHidden = false
        selected2.isHidden = true
        selected3.isHidden = true
        
        container.isHidden = false
        grid1.isHidden = false
        grid2.isHidden = true
        grid3.isHidden = true

        
    }
    
    
    @IBAction func buttonSelected2() {
        selected.isHidden = true
        selected2.isHidden = false
        selected3.isHidden = true

        container.isHidden = false
        
        grid1.isHidden = true
        grid2.isHidden = false
        grid3.isHidden = true
    }
    
    
    
    @IBAction func buttonSelected3() {
        selected3.isHidden = false
        selected2.isHidden = true
        selected.isHidden = true
        
        container.isHidden = false
        grid1.isHidden = true
        grid2.isHidden = true
        grid3.isHidden = false
        
        //displayDispo3()
        //takePhoto()
    }
    
    
    
    @IBAction func button1D1() {
    }
    
    
    
    @IBAction func button2D1() {
    }
    
    
    
    @IBAction func button3D1() {
    }
    
    
    
    
    @IBAction func button1D2() {
    }
    
    
    @IBAction func button2D2() {
    }
    
    
    @IBAction func button3D2() {
    }
    
    
    @IBAction func button1D3() {
    }
    
    
    @IBAction func button2D3() {
    }
    
    
    @IBAction func button3D3() {
    }
    
    @IBAction func button4D3() {
    }
    
    //func takePhoto() {
        //imagePicker = UIImagePickerController()
        //imagePicker.delegate = self
        //imagePicker.sourceType = .camera
        //present(imagePicker, animated: true, completion: nil)
        
    //}
    
    //func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
    //}
    
    //func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
    //}
    
    
  
    
   
    
    
    
}

