//
//  CardView.swift
//  Card_design
//
//  Created by Mamatqobilov Bobomurod on 26/06/24.
//

import UIKit

class CardView: UIView{
    
    let card = UIImageView()
    let bankName = UILabel()
    let bankicon = UIImageView()
    let hisob = UILabel()
    let hisobValyuta = UILabel()
    let cardType = UILabel()
    let cardNum = UILabel()
    let cardDate = UILabel()
    let cardTypeIcon = UIImageView()
    let button = UIButton()
    let cardTypeShort = UILabel()
    
    let hd: CGFloat = UIScreen.main.bounds.height
    let wd: CGFloat = UIScreen.main.bounds.width
    
    var isStarTapped = false
    
    let wm: CGFloat = 10
    lazy var wcard: CGFloat = wd-20
    lazy var hcard: CGFloat = 2*wcard/3
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        translatesAutoresizingMaskIntoConstraints = false
        
        card.image = UIImage(named: "card")
        card.translatesAutoresizingMaskIntoConstraints = false
        card.layer.cornerRadius = 15
        card.clipsToBounds = true
        
        bankName.text = "NATIONAL\nBANK OF UZBEKISTAN"
        bankName.font = .systemFont(ofSize: 16, weight: .semibold)
        bankName.textColor = .white
        bankName.translatesAutoresizingMaskIntoConstraints = false
        bankName.numberOfLines = 2
        
        bankicon.image = UIImage(named: "nbulogo")
        bankicon.translatesAutoresizingMaskIntoConstraints = false
        
        hisob.text = "1 700"
        hisob.font = .systemFont(ofSize: 25, weight: .semibold)
        hisob.textColor = .white
        hisob.translatesAutoresizingMaskIntoConstraints = false
        
        hisobValyuta.text = "UZS"
        hisobValyuta.font = .systemFont(ofSize: 14, weight: .semibold)
        hisobValyuta.textColor = .white
        hisobValyuta.translatesAutoresizingMaskIntoConstraints = false
        
        cardType.text = "Humo virtual"
        cardType.font = .systemFont(ofSize: 16)
        cardType.textColor = .white
        cardType.translatesAutoresizingMaskIntoConstraints = false
        
        cardNum.text = "5614****2711"
        cardNum.font = .systemFont(ofSize: 21)
        cardNum.textColor = .white
        cardNum.translatesAutoresizingMaskIntoConstraints = false
        
        cardDate.text = "01/26"
        cardDate.font = .systemFont(ofSize: 20)
        cardDate.textColor = .white
        cardDate.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("☆", for: .normal)
        button.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.tag = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(btnclick), for: .touchUpInside)
        
        cardTypeIcon.image = UIImage(named: "humo")
        cardTypeIcon.translatesAutoresizingMaskIntoConstraints = false
        
        cardTypeShort.text = "V I R T U A L"
        cardTypeShort.font = .systemFont(ofSize: 11)
        cardTypeShort.textColor = .white
        cardTypeShort.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(card)
        addSubview(bankName)
        addSubview(bankicon)
        addSubview(hisob)
        addSubview(hisobValyuta)
        addSubview(cardType)
        addSubview(cardNum)
        addSubview(cardDate)
        addSubview(button)
        addSubview(cardTypeIcon)
        addSubview(cardTypeShort)
        
        
        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            card.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
//            card.widthAnchor.constraint(equalToConstant: wcard),
            card.bottomAnchor.constraint(equalTo: bottomAnchor),
            card.rightAnchor.constraint(equalTo: rightAnchor),
            
            bankicon.leftAnchor.constraint(equalTo: leftAnchor, constant: 25),
            bankicon.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            bankicon.widthAnchor.constraint(equalToConstant: 40),
            bankicon.heightAnchor.constraint(equalToConstant: 50),
            
            bankName.leftAnchor.constraint(equalTo: bankicon.rightAnchor, constant: 10),
            bankName.bottomAnchor.constraint(equalTo: topAnchor, constant: 75),
            bankName.rightAnchor.constraint(lessThanOrEqualTo: button.leftAnchor, constant: -10),
            
            hisob.bottomAnchor.constraint(equalTo: bankicon.bottomAnchor, constant: 50),
            hisob.leftAnchor.constraint(equalTo: leftAnchor, constant: 25),
            
            hisobValyuta.bottomAnchor.constraint(equalTo: bankicon.bottomAnchor, constant: 47),
            hisobValyuta.leftAnchor.constraint(equalTo: hisob.rightAnchor, constant: 10),
            hisobValyuta.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: -20),
            
            cardType.leftAnchor.constraint(equalTo: leftAnchor, constant: 25),
            cardType.bottomAnchor.constraint(equalTo: hisob.bottomAnchor, constant: 35),
            cardType.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: -100),
            
            cardNum.bottomAnchor.constraint(equalTo: cardType.bottomAnchor, constant: 40),
            cardNum.leftAnchor.constraint(equalTo: leftAnchor, constant: 25),
            
            cardDate.bottomAnchor.constraint(equalTo: cardType.bottomAnchor, constant: 40),
            cardDate.leftAnchor.constraint(equalTo: cardNum.rightAnchor, constant: 10),
            cardDate.rightAnchor.constraint(lessThanOrEqualTo: cardTypeIcon.rightAnchor, constant: -40),
            
            button.rightAnchor.constraint(equalTo: rightAnchor, constant: -15),
            button.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            button.widthAnchor.constraint(equalToConstant: 30),
            button.heightAnchor.constraint(equalToConstant: 30),
            
            cardTypeIcon.bottomAnchor.constraint(equalTo: cardType.bottomAnchor, constant: 40),
            cardTypeIcon.rightAnchor.constraint(equalTo: rightAnchor, constant: -15),
            cardTypeIcon.widthAnchor.constraint(equalToConstant: 65),
            cardTypeIcon.heightAnchor.constraint(equalToConstant: 40),
            
            cardTypeShort.topAnchor.constraint(equalTo: cardTypeIcon.bottomAnchor, constant: 4),
            cardTypeShort.rightAnchor.constraint(equalTo: rightAnchor, constant: -14),
            cardTypeShort.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: -12)
        ])
    }
    
    func initData(_ obj: CardInfo){
        card.image = UIImage(named: obj.card)
        bankName.text = obj.bankName
        bankicon.image = UIImage(named: obj.bankicon)
        hisob.text = obj.hisob
        hisobValyuta.text = obj.hisobValyuta
        cardType.text = obj.cardType
        cardNum.text = obj.cardNum
        cardDate.text = obj.cardDate
        cardTypeIcon.image = UIImage(named: obj.cardTypeIcon)
        cardTypeShort.text = obj.cardTypeShort
    }
    
    @objc func btnclick(_ sender: UIButton){
        print(sender.tag)
        if isStarTapped == false {
            isStarTapped = true
            sender.setTitle("★", for: .normal)
        } else {
            isStarTapped = false
            sender.setTitle("☆", for: .normal)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
