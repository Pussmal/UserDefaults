//
//  AdressesViewController.swift
//  UserDefaults
//
//  Created by Алексей Моторин on 11.07.2022.
//

import UIKit

class AdressesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Adresses"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAdress))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    
    @objc private func addAdress() {
        guard let addAdressVC = self.storyboard?.instantiateViewController(identifier: "AddAdressViewController") as? AddAdressViewController else { return }
        navigationController?.pushViewController(addAdressVC, animated: true)
    }

}

extension AdressesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Adresses.userAdresses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = Adresses.userAdresses[indexPath.row].discription
        cell.textLabel?.numberOfLines = 0
        return cell
    }
}
