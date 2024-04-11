//
//  ThirdController.swift
//  figma3App
//
//  Created by Default on 10.04.24.
//

import UIKit

class ThirdController: UIViewController {
    
    
    var viewForImage: UIImageView = {
        let forim = UIImageView()
        forim.translatesAutoresizingMaskIntoConstraints = false
        return forim
    }()
    
    var label1: UILabel = {
        let textbox = UILabel()
        textbox.translatesAutoresizingMaskIntoConstraints = false
        return textbox
    }()
    
    var button1: UIButton = {
        let butt = UIButton()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var button2: UIButton = {
        let butt = UIButton()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackground()
        loadviewForImage()
        loadsetuplabel1()
        loadbutton1()
        loadbutton2()
    }
    
    
    func loadBackground(){
        if let image = UIImage(named: "MainImage") {
            self.view = UIImageView(image: image)
            self.view.alpha = 0.9
        } else {
            print("Error: Couldn't find image named MainImage")
        }
        
    }
    func loadviewForImage(){
        self.view.addSubview(viewForImage)
        constraintForviewForImage()
    }
    
    func constraintForviewForImage() {
        viewForImage.image = UIImage(named: "Image1")
        viewForImage.widthAnchor.constraint(equalToConstant: 165).isActive = true
        viewForImage.heightAnchor.constraint(equalToConstant: 165).isActive = true
        viewForImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        viewForImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 105).isActive = true
    }
    
    func loadsetuplabel1(){
        self.view.addSubview(label1)
        constraintForsetuplabel1()
    
    }
    
    
    func constraintForsetuplabel1(){
        label1.widthAnchor.constraint(equalToConstant: 88).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 34).isActive = true
        label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 320).isActive = true
        label1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 143).isActive = true
        label1.text = "თევზები"
        label1.font = UIFont(name: "Sylfaen", size: 24)
        label1.textColor = UIColor.white
    }
    
    func loadbutton1(){
        self.view.addSubview(button1)
        ConstraintForloadbutton1()
    }

    func ConstraintForloadbutton1() {
        button1.widthAnchor.constraint(equalToConstant: 335).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 46).isActive = true
        button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 370).isActive = true
        button1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 17).isActive = true
        button1.layer.cornerRadius = 12
        button1.backgroundColor = UIColor(named: "Color3")
        button1.setTitle("წითელი", for: .normal)
    }
    
    func loadbutton2(){
        self.view.addSubview(button2)
        ConstraintForloadbutton2()
        button2.addTarget(self, action: #selector(saySomething), for: .touchUpInside)
    }
    
    
    @objc func saySomething() {
      //  let second = SecondController()
       // navigationController?.pushViewController(second, animated: true)
        print("Navigating to second page")
    }

    func ConstraintForloadbutton2() {
        button2.widthAnchor.constraint(equalToConstant: 335).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 46).isActive = true
        button2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 430).isActive = true
        button2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 17).isActive = true
        button2.layer.cornerRadius = 12
        button2.backgroundColor = UIColor(named: "Color4")
        button2.setTitle("ლურჯი", for: .normal)
        
    }
    
    

}
