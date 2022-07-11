//
//  ViewController.swift
//  UserDefaults
//
//  Created by Алексей Моторин on 11.07.2022.
//

import UIKit

class AddAdressViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var houseTextField: UITextField!
    @IBOutlet weak var buildTextField: UITextField!
    @IBOutlet weak var flatTextField: UITextField!
    
    // MARK: Properties
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add adress"
    }

    // MARK: @IBAction
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        saveEnteredAdress()
    }
    
    // MARK: Methods
    private func saveEnteredAdress() {
        
        guard
            let city = cityTextField.text,
            let street = streetTextField.text,
            let house = houseTextField.text,
            let flat = flatTextField.text
        else { return }
        
        SingleTone.singleTone.saveAdress(city: city,
                                         street: street,
                                         house: house,
                                         build: buildTextField.text ?? "",
                                         flat: flat)
    }
}

