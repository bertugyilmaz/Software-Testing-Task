
import Foundation

    func decimalToString(_ deci: Decimal) -> String {
        let dummy = String(describing: deci)
        return dummy
    }

    func stringToInt(_ str: String) -> Int {
        guard let dummy = Int(str) else {
            return 0
        }
        return dummy
    }

    func intToBinary(binary : Int) -> String{
        return String(binary,radix : 2)
    }

    let blackStone : Character = "0"
    var lineNumber : Int = 0
    var aralikAsString : String!
    var aralikAsInt : Int!
    var tempCharArray = [Character]()
    var tempStringArray = [String]()
    var resultsArray = [String]()
    var isCorrect : Bool = true

    print("**********************************************************************************\n")
    print("Sayılar 0 ile başlıyamayacağı için siyahları 0 beyazları 1 olarak kabul edilmistir")
    print("\n**********************************************************************************\n")
    print("Basamak Sayısını giriniz : ")

    while true {
        if let response = readLine() {
            if let responseInt = Int(response){
                if responseInt > 20 {
                    print("Girdiğiniz Değerin Hesaplanabilmesi Zaman alıyor..")
                    print("Başka Bir Değer Giriniz...")
                    continue
                }
                lineNumber = responseInt
                break
            }else{
                print("Please enter a valid Value")
            }
        }
    }

    if lineNumber == 0 {                                                     //0 lar siyah kabul edildiği için
        print("ihtimal bulunamadı")
        exit(0)
    }

    aralikAsString = decimalToString(pow(2, lineNumber))                    // 2 üzeri girilen basamak sayısı kadar olan sayıyı bulur ve string değere dönüştürülür
    aralikAsInt = stringToInt(aralikAsString)                               // oluşan bu string değerle işlem yapabilmek için int e çevirildi

    for i in aralikAsInt / 2 ... aralikAsInt - 1 {
        tempStringArray.removeAll()                                         //farklı değerler için boşaltım gerçekleştirildi
        tempStringArray.append(intToBinary(binary: i))
        for item in tempStringArray{
            tempCharArray = Array(item.characters)                          //string içerisindeki tüm karakterler char arrayine dönüştürüldü
        
            for i in 0...tempCharArray.count-1{
                if tempCharArray.count == i + 1{
                    break
                }
                if tempCharArray[i] == blackStone && tempCharArray[i+1] == blackStone {
                    isCorrect = false                                      //gerekli şartların sağlanıp sağlanmadığı kontrol edildi
                    break
                }else{
                    isCorrect = true
                }
            }
            
                if isCorrect {
                resultsArray.append(item)
                tempCharArray.removeAll()                                  //char dizisi terkar kullanılabilmek üzere boşaltıldı
            }
        }
    }

    for item in resultsArray {
        print("Uygun Değerler --> \(item)")
    }

    print("\n\(lineNumber) lı sayının olasılığı --> \(resultsArray.count)")
