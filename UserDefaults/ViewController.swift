//
//  ViewController.swift
//  UserDefaults
//
//  Created by Алексей Моторин on 11.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
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
        loadEnteredAdress()
    }

    // MARK: @IBAction
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        saveEnteredAdress()
    }
    
    // MARK: Methods
    private func saveEnteredAdress() {
        userDefault.set(cityTextField.text, forKey: KeyDefaults.city.rawValue)
        userDefault.set(streetTextField.text, forKey: KeyDefaults.stret.rawValue)
        userDefault.set(houseTextField.text, forKey: KeyDefaults.house.rawValue)
        userDefault.set(buildTextField.text, forKey: KeyDefaults.build.rawValue)
        userDefault.set(flatTextField.text, forKey: KeyDefaults.flat.rawValue)
    }
    
    private func loadEnteredAdress() {
        cityTextField.text = userDefault.string(forKey: KeyDefaults.city.rawValue)
        streetTextField.text = userDefault.string(forKey: KeyDefaults.stret.rawValue)
        houseTextField.text = userDefault.string(forKey: KeyDefaults.house.rawValue)
        buildTextField.text = userDefault.string(forKey: KeyDefaults.build.rawValue)
        flatTextField.text = userDefault.string(forKey: KeyDefaults.flat.rawValue)
    }
    
}

