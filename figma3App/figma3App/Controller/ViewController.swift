//
//  ViewController.swift
//  figma3App
//
//  Created by Default on 10.04.24.
//

import UIKit

protocol DataDelegate: AnyObject {
    func sendData(data: String)
}

class ViewController: UIViewController {
    
    var textBoxForMisha: UILabel = {
        let textbox = UILabel()
        textbox.translatesAutoresizingMaskIntoConstraints = false
        return textbox
    }()
    
    
    var label2: UILabel = {
        let textbox = UILabel()
        textbox.translatesAutoresizingMaskIntoConstraints = false
        return textbox
    }()
    
    
    var stackViewForName: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    var stackViewInner: UIStackView = {
        let stackv = UIStackView()
        stackv.translatesAutoresizingMaskIntoConstraints = false
        return stackv
    }()
    
    
    var labelMail: UILabel = {
        let lab = UILabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    
    
    var textFieldForName: UITextField = {
        let tex = UITextField()
        tex.translatesAutoresizingMaskIntoConstraints = false
        return tex
    }()
    
    var buttonNext: UIButton = {
        let butt = UIButton()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackground()
        loadStack()
        loadButtonNext()
        
    }
    
    
    
    func loadBackground(){
        if let image = UIImage(named: "MainImage") {
            self.view = UIImageView(image: image)
            self.view.alpha = 0.9
        } else {
            print("Error: Couldn't find image named MainImage")
        }
    
        view.addSubview(textBoxForMisha)
        setupTextBoxConstraints()
        view.addSubview(label2)
        setupLabel2Constraints()
    }
    
    
    func setupTextBoxConstraints(){
        textBoxForMisha.widthAnchor.constraint(equalToConstant: 229).isActive = true
        textBoxForMisha.heightAnchor.constraint(equalToConstant: 34).isActive = true
        textBoxForMisha.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        textBoxForMisha.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18).isActive = true
        textBoxForMisha.text = "მიშა ცაგარელის ჰაბი"
        textBoxForMisha.font = UIFont(name: "Sylfaen", size: 28)
        textBoxForMisha.textColor = UIColor.white
    }
    
    
    func setupLabel2Constraints(){
        label2.widthAnchor.constraint(equalToConstant: 327).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 66).isActive = true
        label2.topAnchor.constraint(equalTo: textBoxForMisha.bottomAnchor, constant: 30).isActive = true
        label2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        label2.text = "მოცემულ აპლიკაციაში შეგიძლიათ გაიგოთ თქვენი ზოდიაქოს ყველაზე გამოკვეთილი უნარები და თვისებები."
        label2.numberOfLines = 0
        label2.font = UIFont(name: "Sylfaen", size: 16)
        label2.textColor = UIColor(named: "Color1")
    }

    func loadStack(){
        let stackMain = stackViewForName
        stackMain.addArrangedSubview(labelMail)
        let stackInner = stackViewInner
        stackInner.addArrangedSubview(textFieldForName)
        stackMain.addArrangedSubview(stackInner)
        self.view.addSubview(stackMain)
        constraintForlabelMail()
        constraintForstackInner()
        constraintForStackMain()
        constraintFortextFieldForName()
    }
    
    //MARK - Constraints
    
    func constraintForStackMain(){
        stackViewForName.widthAnchor.constraint(equalToConstant: 335).isActive = true
        stackViewForName.heightAnchor.constraint(equalToConstant: 68).isActive = true
        stackViewForName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 282).isActive = true
        stackViewForName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22).isActive = true
        stackViewForName.spacing = 4
        stackViewForName.axis = .vertical
    }

    func constraintForlabelMail(){
        labelMail.widthAnchor.constraint(equalToConstant: 327).isActive = true
        labelMail.heightAnchor.constraint(equalToConstant: 20).isActive = true
        labelMail.font = UIFont(name: "Sylfaen", size: 12)
        labelMail.textColor = UIColor.white
        labelMail.text = "ზოდიაქოს სახელი"
    }
    
    func constraintForstackInner(){
        stackViewInner.widthAnchor.constraint(equalToConstant: 335).isActive = true
        stackViewInner.heightAnchor.constraint(equalToConstant: 44).isActive = true
        stackViewInner.spacing = 10
        stackViewInner.axis = .vertical
        stackViewInner.layer.cornerRadius = 4
        stackViewInner.layer.borderWidth = 1
        stackViewInner.layer.borderColor = UIColor(named: "Color1")?.cgColor
       
    }
    
    func constraintFortextFieldForName(){
        textFieldForName.widthAnchor.constraint(equalToConstant: 295).isActive = true
        textFieldForName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        textFieldForName.font = UIFont(name: "Sylfaen", size: 12)
        textFieldForName.textColor = UIColor(named: "Color1")
        textFieldForName.placeholder = "მაგ: ქალწული"
    }
    
    weak var delegate: DataDelegate?
    
    func loadButtonNext() {
        self.view.addSubview(buttonNext)
        constraintForButtonNext()
        buttonNext.addTarget(self, action: #selector(goToSecondPage), for: .touchUpInside)
    }

    @IBAction func goToSecondPage() {
        let second = SecondController()
        navigationController?.pushViewController(second, animated: true)
        delegate?.sendData(data: textFieldForName.text ?? "მშვილდოსანი")
        print("Navigating to second page")
    }
    
    func constraintForButtonNext(){
        buttonNext.widthAnchor.constraint(equalToConstant: 335).isActive = true
        buttonNext.heightAnchor.constraint(equalToConstant: 46).isActive = true
        buttonNext.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 400).isActive = true
        buttonNext.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        buttonNext.layer.cornerRadius = 12
        buttonNext.backgroundColor = UIColor(named: "Color2")
        buttonNext.setTitle("შემდეგი", for: .normal)
        
     
        
        
    }
}

