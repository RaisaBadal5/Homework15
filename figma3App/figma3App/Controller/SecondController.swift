//
//  SecondController.swift
//  figma3App
//
//  Created by Default on 10.04.24.
//

import UIKit

class SecondController: UIViewController,DataDelegate  {
    
   
    func sendData(data: String) {
        switch(data){
        case "ვერძი":changeConstraint(hor: zodiac[0])
        case "კურო": changeConstraint(hor:zodiac[1])
        case "ტყუპი": changeConstraint(hor:zodiac[2])
        case "ლომი": changeConstraint(hor:zodiac[3])
        case "კირჩხიბი": changeConstraint(hor:zodiac[4])
        case "ქალწული": changeConstraint(hor:zodiac[5])
        case "სასწორი": changeConstraint(hor:zodiac[6])
        case "მორიელი": changeConstraint(hor:zodiac[7])
        case "მშვილდოსანი": changeConstraint(hor:zodiac[8])
        case "თხის რქა": changeConstraint(hor:zodiac[9])
        case "მერწყული": changeConstraint(hor:zodiac[10])
        case "თევზები": changeConstraint(hor:zodiac[11])
        default:
            changeConstraint(hor:zodiac[8])
        }
    }
    
    func changeConstraint(hor: Horoscope) {
        viewForImage.image = UIImage(named: hor.PhotoName)
        textViewForDescription.text = hor.Description
        textForZodiaqo.text = hor.Name
    }
    
    
    var textForZodiaqo: UILabel = {
        var tex = UILabel()
        tex.translatesAutoresizingMaskIntoConstraints = false
        return tex
    }()
    
    var textViewForDescription: UITextView = {
        var tex = UITextView()
        tex.translatesAutoresizingMaskIntoConstraints = false
        return tex
    }()
    
    
    var buttonPolar: UIButton = {
        let butt = UIButton()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var viewForImage: UIImageView = {
        let forim = UIImageView()
        forim.translatesAutoresizingMaskIntoConstraints = false
        return forim
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackground()
        loadtextForZodiaqo()
        loadtextViewForDescription()
        loadviewForImage()
        loadbuttonPolar()
    }
    
    func loadBackground(){
        if let image = UIImage(named: "MainImage") {
            self.view = UIImageView(image: image)
            self.view.alpha = 0.9
        } else {
            print("Error: Couldn't find image named MainImage")
        }
        
    }
    
    func loadtextForZodiaqo(){
        self.view.addSubview(textForZodiaqo)
        constraintFortextForZodiaqo()
    }
    
    
    func constraintFortextForZodiaqo(){
        textForZodiaqo.widthAnchor.constraint(equalToConstant: 110).isActive = true
        textForZodiaqo.heightAnchor.constraint(equalToConstant: 34).isActive = true
        textForZodiaqo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 206).isActive = true
        textForZodiaqo.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 130).isActive = true
        textForZodiaqo.font = UIFont(name: "Sylfaen", size: 24)
        textForZodiaqo.textColor = UIColor.white
        textForZodiaqo.text = "ქალწული"
    }
    
    
    func loadtextViewForDescription(){
        self.view.addSubview(textViewForDescription)
        constraintFortextViewForDescription()
    }
    
    
    func constraintFortextViewForDescription(){
        textViewForDescription.widthAnchor.constraint(equalToConstant: 327).isActive = true
        textViewForDescription.heightAnchor.constraint(equalToConstant: 420).isActive = true
        textViewForDescription.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 270).isActive = true
        textViewForDescription.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24).isActive = true
        textViewForDescription.font = UIFont(name: "Sylfaen", size: 14)
        textViewForDescription.textColor = UIColor(named: "Color1")
        textViewForDescription.text = "პლანეტა მერკურის გავლენის ქვეშ დაბადებული ქალწულები, მოწესრიგებულობით, უზადო პასუხისმგებლობის გრძნობით და წვრილმანების მიმართ გასაოცარი ყურადღებიანობით გამოირჩევიან. ზოდიაქოს სხვა ნიშნის წარმომადგენლებს შორის, ქალწულის ცნობა მისი უნაკლო ჩაცმულობით, დავარცხნილ-გაწკრიალებული გარეგნობით და ზრდილობიანი მანერებით შეიძლება.ქალწულებს შორის როგორც წესი, ტანმორჩილი ხალხი სჭარბობს.მათ შორის გიგანტს ან შესამჩნევად დიდი გაბარიტების მქონე ხალხს იშვიათად შეხვდებით.გამომდინარე იქედან, რომ ქალწულის ზოდიაქო, კუჭნაწლავის და ზოგადად საჭმლის მომნელებელ სისტემაზეა პასუხისმგებელი, ზოდიაქოს ამ ნიშნით დაბადებულ ადამიანებს, საკვების და ზოგადად ჯანსაღი კვების სფერო განსაკუთრებულად აღელვებთ და აინტერესებთ. იშვიათი არ არის არც ის ფაქტი, რომ ქალწულის ზოდიაქოს ნიშნით დაბადებულთა შორის, ბევრი ექიმი- დიეტოლოგი და ფარმაცევტი გვხვდება."
        textViewForDescription.backgroundColor = .none
        
    }
    
    func loadbuttonPolar(){
        self.view.addSubview(buttonPolar)
        constraintForbuttonPolar()
    }

    func constraintForbuttonPolar() {
        buttonPolar.widthAnchor.constraint(equalToConstant: 335).isActive = true
        buttonPolar.heightAnchor.constraint(equalToConstant: 46).isActive = true
        buttonPolar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 620).isActive = true
        buttonPolar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        buttonPolar.layer.cornerRadius = 12
        buttonPolar.backgroundColor = UIColor(named: "Color2")
        buttonPolar.setTitle("პოლარული ნიშანი", for: .normal)
    }
    
    func loadviewForImage(){
        self.view.addSubview(viewForImage)
        constraintForviewForImage()
    }
    
    func constraintForviewForImage() {
        viewForImage.image = UIImage(named: "Image1")
        viewForImage.widthAnchor.constraint(equalToConstant: 156).isActive = true
        viewForImage.heightAnchor.constraint(equalToConstant: 156).isActive = true
        viewForImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 55).isActive = true
        viewForImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 109).isActive = true
    }
    
}
