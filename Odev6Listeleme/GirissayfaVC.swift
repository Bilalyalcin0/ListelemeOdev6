//
//  GirişsayfaVC.swift
//  Odev6Listeleme
//
//  Created by Bilal Yalcin on 20.08.2022.
//

import UIKit

class GirissayfaVC: UIViewController {
    
    

    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var stepperYetiskin: UIStepper!
    @IBOutlet weak var stepperCocuk: UIStepper!
    @IBOutlet weak var labelYStepper: UILabel!
    @IBOutlet weak var labelCStepper: UILabel!
    
    @IBOutlet weak var textGirisTarif: UITextField!
    @IBOutlet weak var textCıkısTarih: UITextField!
    
    
    var datePicker1 : UIDatePicker?
    var datePicker2 : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        searchBar.delegate = self
        
        labelYStepper.text = String(Int(stepperYetiskin.value))
        labelCStepper.text = String(Int(stepperCocuk.value))
        
        datePicker1 = UIDatePicker()
        datePicker1?.datePickerMode = .date
        textGirisTarif.inputView = datePicker1
        if #available(iOS 13.4, *) {
            datePicker1?.preferredDatePickerStyle = .wheels
        }
        
        datePicker2 = UIDatePicker()
        datePicker2?.datePickerMode = .date
        textCıkısTarih.inputView = datePicker2
        if #available(iOS 13.4, *) {
            datePicker2?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilama))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        datePicker1?.addTarget(self, action: #selector(girisTarih(uiDatePicker:)), for: UIControl.Event.valueChanged)
        datePicker2?.addTarget(self, action: #selector(cikisTarih(uiDatePicker:)), for: UIControl.Event.valueChanged)
        
        if let tabItems = tabBarController?.tabBar.items {
            
            let item = tabItems[4]
            item.badgeValue = "2"
        }
        
        let appearance = UITabBarAppearance()
        
        
        renkDegisimi(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegisimi(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegisimi(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance

        
    }
    func renkDegisimi(itemAppearance : UITabBarItemAppearance) {
        itemAppearance.selected.iconColor = UIColor.systemRed
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemRed]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemRed
        
       
    }
    
    @objc func dokunmaAlgilama() {
        view.endEditing(true)
    }
    
    @objc func girisTarih(uiDatePicker : UIDatePicker) {
        let tarihFormati = DateFormatter()
        tarihFormati.dateFormat = "dd/MM/yyyy"
        let alinanTarih = tarihFormati.string(from: uiDatePicker.date)
        textGirisTarif.text = alinanTarih
    }
    
    @objc func cikisTarih(uiDatePicker : UIDatePicker) {
        let tarihFormati = DateFormatter()
        tarihFormati.dateFormat = "dd/MM/yyyy"
        let alinanTarih = tarihFormati.string(from: uiDatePicker.date)
        textCıkısTarih.text = alinanTarih
    }
    
    @IBAction func stepperY(_ sender: UIStepper) {
        labelYStepper.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepperC(_ sender: UIStepper) {
        labelCStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBaskaOda(_ sender: Any) {
    }
    
    @IBAction func buttonFırsat(_ sender: Any) {
//        performSegue(withIdentifier: "toHotelsVC", sender: nil)
    }
    
}
extension GirissayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu : \(searchText)")
    }
}
