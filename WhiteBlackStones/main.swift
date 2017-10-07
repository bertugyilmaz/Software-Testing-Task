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
while onlukTabandakiEnbuyukSayi > 0{
    tempCharArray.removeAll()
    tempCharArray =  Array(String(onlukTabandakiEnbuyukSayi,radix : 2))
    while i <= tempCharArray.count-1
    {
        if tempCharArray.count == i+1 {
            break
        }
        if tempCharArray[i] == tempCharArray[i+1]{
            print("yan yana 1 var")
        }else{
            print("1 yok yan yana")
            tempStringArray.append(String(tempCharArray))
        }
        
            i = i + 1
        print(tempStringArray)
    }
    i = 0
    onlukTabandakiEnbuyukSayi = onlukTabandakiEnbuyukSayi-1

}



