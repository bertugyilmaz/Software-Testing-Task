//
//  main.swift
//  WhiteBlackStones
//
//  Created by onur hüseyin çantay on 7.10.2017.
//  Copyright © 2017 onur hüseyin çantay. All rights reserved.
//

import Foundation
var basamakSayisi : Int = 0
var enBuyukSayiKarakterDizisi = [Character] ()
var enBuyukSayiDizisi : String!
var onlukTabandakiEnbuyukSayi : Int!
print("Basamak Sayısını giriniz : ")
if let response = readLine(){
    basamakSayisi = Int(response)!
}
for _ in 1...basamakSayisi {
    enBuyukSayiKarakterDizisi.append("1")
    enBuyukSayiDizisi = String(enBuyukSayiKarakterDizisi)
}
onlukTabandakiEnbuyukSayi = Int(enBuyukSayiDizisi, radix : 2)
print(enBuyukSayiDizisi)
print(onlukTabandakiEnbuyukSayi)
var tempCharArray = [Character] ()
var tempStringArray = [String]()
var temp : Int!
var i : Int! = 0
var uygunMu : Bool = true
while onlukTabandakiEnbuyukSayi > 0{
    tempCharArray.removeAll()
    tempCharArray =  Array(String(onlukTabandakiEnbuyukSayi,radix : 2))
    while i <= tempCharArray.count-1
    {
        /*
    10'luk tabanda | 2'lik Tabanda
         1.        | 1
         2.        | 10
         3.        | 11
         4.        | 100
         5.        | 101
         6.        | 110
         7.        | 111
         sıkıntı şöyle biz 3 basamaklı istediğimiz zaman 3 basamaklı olmayan sayılar da olucak ustteki gibi
         önüne sıfır koymamız sayı açısından bişey değiştirmesede beyaz muhabbetini biz anlayabilecez
         ama önüne nasıl koyacağımızı ben yapamadım yani kafam durdu bi bakıver :/
         */
        if tempCharArray.count == i+1 {
            break
        }
        
        if tempCharArray[i] == tempCharArray[i+1]{
            if (tempCharArray.first == "1"){
                uygunMu = false
                break
            }
            uygunMu = false
            break
        }
        i = i + 1
    }
    if(uygunMu){
        tempStringArray.append(String(tempCharArray))
    }
     i = 0
    onlukTabandakiEnbuyukSayi = onlukTabandakiEnbuyukSayi-1
    uygunMu = true
}
for item in tempStringArray{
    print("\(item)")
}



