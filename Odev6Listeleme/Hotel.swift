//
//  Hotel.swift
//  Odev6Listeleme
//
//  Created by Bilal Yalcin on 20.08.2022.
//

import Foundation

class Hotel {
   
    var hotelId : Int?
    var hotelAdi : String?
    var hotelResimAdi : String?
    var hotelFiyat : Int?
    var hotelPuan : String?
    var hotelYorumSayisi : String?
    var hotelSehirUzaklik : String?
    var kalanOda : String?
    
    init(hotelId: Int, hotelAdi: String, hotelResimAdi: String, hotelFiyat: Int, hotelPuan: String, hotelYorumSayisi: String, hotelSehirUzaklik: String, kalanOda : String) {
        self.hotelId = hotelId
        self.hotelAdi = hotelAdi
        self.hotelResimAdi = hotelResimAdi
        self.hotelFiyat = hotelFiyat
        self.hotelPuan = hotelPuan
        self.hotelYorumSayisi = hotelYorumSayisi
        self.hotelSehirUzaklik = hotelSehirUzaklik
        self.kalanOda = kalanOda
    }
    
}
