//
//  HucreTableViewCell.swift
//  Odev6Listeleme
//
//  Created by Bilal Yalcin on 20.08.2022.
//

import UIKit

class HotelTableViewCell: UITableViewCell {

    @IBOutlet weak var hotelResimImageView: UIImageView!
    @IBOutlet weak var hotelAdLabel: UILabel!
    @IBOutlet weak var hotelUzaklikLabel: UILabel!
    @IBOutlet weak var hotelYorumLabel: UILabel!
    @IBOutlet weak var hotelPuanLabel: UILabel!
    @IBOutlet weak var hotelFiyatLabel: UILabel!
    @IBOutlet weak var hotelKalanOdaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
