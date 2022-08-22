//
//  HotelsVC.swift
//  Odev6Listeleme
//
//  Created by Bilal Yalcin on 20.08.2022.
//

import UIKit

class HotelsVC: UIViewController {

    @IBOutlet weak var hotelsTableView: UITableView!
    
    var hotelsListe = [Hotel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hotelsTableView.delegate = self
        hotelsTableView.dataSource = self

        let h1 = Hotel(hotelId: 1, hotelAdi: "TN & CO Hotel", hotelResimAdi: "hotel1", hotelFiyat: 4496, hotelPuan: "9.0 Mükemmel", hotelYorumSayisi: "100 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 0,1 km", kalanOda: "Bu fiyata sitemizde 2 oda kaldı")
        
        let h2 = Hotel(hotelId: 2, hotelAdi: "Panaroma Plaza", hotelResimAdi: "hotel2", hotelFiyat: 4905, hotelPuan: "9.1 Mükemmel", hotelYorumSayisi: "21 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 2 km", kalanOda: "Bu fiyata sitemizde 3 oda kaldı")
        
        let h3 = Hotel(hotelId: 3, hotelAdi: "Villa Marine Hotel", hotelResimAdi: "hotel3", hotelFiyat: 10164, hotelPuan: "9.6 Olağanüstü", hotelYorumSayisi: "93 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 18 km", kalanOda: "Bu fiyata sitemizde 1 oda kaldı")
        
        let h4 = Hotel(hotelId: 4, hotelAdi: "Otel Argento", hotelResimAdi: "hotel4", hotelFiyat: 6800, hotelPuan: "9.0 Mükemmel", hotelYorumSayisi: "100 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 0,9 km", kalanOda: "Bu fiyata sitemizde 2 oda kaldı")
        
        let h5 = Hotel(hotelId: 5, hotelAdi: "Erdem Hotel", hotelResimAdi: "hotel5", hotelFiyat: 5975, hotelPuan: "10.0 Olağanüstü", hotelYorumSayisi: "5 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 1,7 km", kalanOda: "Bu fiyata sitemizde 1 oda kaldı")
        
        let h6 = Hotel(hotelId: 6, hotelAdi: "Beacon Hill Suites", hotelResimAdi: "hotel6", hotelFiyat: 14989, hotelPuan: "8.2 İyi", hotelYorumSayisi: "28 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 19 km", kalanOda: "Bu fiyata sitemizde 4 oda kaldı")
        
        let h7 = Hotel(hotelId: 7, hotelAdi: "Otel Kardelen", hotelResimAdi: "hotel7", hotelFiyat: 4750, hotelPuan: "8.9 Mükemmel", hotelYorumSayisi: "2 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 26 km", kalanOda: "Bu fiyata sitemizde 1 oda kaldı")
        
        let h8 = Hotel(hotelId: 8, hotelAdi: "Villa Vali", hotelResimAdi: "hotel8", hotelFiyat: 9318, hotelPuan: "8.6 Harika", hotelYorumSayisi: "69 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 39 km", kalanOda: "Bu fiyata sitemizde 2 oda kaldı")
        
        let h9 = Hotel(hotelId: 9, hotelAdi: "Amber Suites Akyaka", hotelResimAdi: "hotel9", hotelFiyat: 4496, hotelPuan: "8.8 Mükemmel", hotelYorumSayisi: "111 Hotels.com misafir yorumu", hotelSehirUzaklik: "Şehir Merkezi - 17 km", kalanOda: "Bu fiyata sitemizde 3 oda kaldı")
        
        hotelsListe.append(h1)
        hotelsListe.append(h2)
        hotelsListe.append(h3)
        hotelsListe.append(h4)
        hotelsListe.append(h5)
        hotelsListe.append(h6)
        hotelsListe.append(h7)
        hotelsListe.append(h8)
        hotelsListe.append(h9)
    }
}
extension HotelsVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelsListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hotel = hotelsListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotelCell", for: indexPath) as! HotelTableViewCell
        
        cell.hotelResimImageView.image = UIImage(named: hotel.hotelResimAdi!)
        cell.hotelAdLabel.text = hotel.hotelAdi
        cell.hotelFiyatLabel.text = "\(hotel.hotelFiyat!) TL"
        cell.hotelPuanLabel.text = hotel.hotelPuan
        cell.hotelYorumLabel.text = hotel.hotelYorumSayisi
        cell.hotelUzaklikLabel.text = hotel.hotelSehirUzaklik
        cell.hotelKalanOdaLabel.text = hotel.kalanOda
        
        return cell
        
    }
}
