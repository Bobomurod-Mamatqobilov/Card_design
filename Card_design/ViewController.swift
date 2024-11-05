//
//  ViewController.swift
//  Card_design
//
//  Created by Mamatqobilov Bobomurod on 18/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    let hd: CGFloat = UIScreen.main.bounds.height
    let wd: CGFloat = UIScreen.main.bounds.width
    
    let wm: CGFloat = 10
    lazy var wcard: CGFloat = wd-20
    lazy var hcard: CGFloat = 3*wcard/5
    
    var isStarTapped = false
    
    
    let cardsArr = [
        CardInfo(card: "card1" , bankName: "NATIONAL\nBANK OF UZBEKISTAN", bankicon: "nbulogo", hisob: "78 000", hisobValyuta: "UZS", cardType: "humo virtual", cardNum: "3454....4567", cardDate: "09/26", cardTypeIcon: "humo", cardTypeShort: "V I R T U A L"),
        CardInfo(card: "card2" , bankName: "TURON\nBANK", bankicon: "turonlogo", hisob: "11 000", hisobValyuta: "USD", cardType: "viza", cardNum: "3454....4567", cardDate: "09/26", cardTypeIcon: "viza", cardTypeShort: "V    I    Z    A"),
        CardInfo(card: "card3" , bankName: "KAPITAL BANK", bankicon: "kapitallogo", hisob: "55 560 000", hisobValyuta: "UZS", cardType: "uzcard", cardNum: "3454....4567", cardDate: "09/26", cardTypeIcon: "uzcard", cardTypeShort: "U Z C A R D"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        for i in 0..<cardsArr.count{
            let myCard = CardView()
            myCard.initData(cardsArr[i])
            myCard.translatesAutoresizingMaskIntoConstraints = false
            myCard.button.tag = i+1
            myCard.hisobValyuta.font = .systemFont(ofSize: 17)
            if cardsArr[i].bankName == "KAPITAL BANK"{
                myCard.bankName.font = .boldSystemFont(ofSize: 25)
            }
            view.addSubview(myCard)
            
            myCard.topAnchor.constraint(equalTo: view.topAnchor, constant: 80+(hcard+15)*CGFloat(i)).isActive = true
            myCard.heightAnchor.constraint(equalToConstant: hcard).isActive = true
            myCard.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            myCard.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        }
        
        
    }
    

}

class CardInfo {
    var card: String
    var bankName: String
    var bankicon: String
    var hisob: String
    var hisobValyuta: String
    var cardType: String
    var cardNum: String
    var cardDate: String
    var cardTypeIcon: String
    var cardTypeShort: String
    
    init(card: String, bankName: String, bankicon: String, hisob: String, hisobValyuta: String, cardType: String, cardNum: String, cardDate: String, cardTypeIcon: String, cardTypeShort: String) {
        self.card = card
        self.bankName = bankName
        self.bankicon = bankicon
        self.hisob = hisob
        self.hisobValyuta = hisobValyuta
        self.cardType = cardType
        self.cardNum = cardNum
        self.cardDate = cardDate
        self.cardTypeIcon = cardTypeIcon
        self.cardTypeShort = cardTypeShort
    }
}
