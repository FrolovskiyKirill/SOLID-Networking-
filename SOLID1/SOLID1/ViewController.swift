//
//  ViewController.swift
//  SOLID1
//
//  Created by Kirill Frolovskiy on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let dataFetcherService = DataFetcherService()    
    let dataStore = DataStore()
    
    //MARK: - IBOutlets

    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var saveButton: UIButton!
    
    
     //MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = saveButton.frame.width / 2
        
        dataFetcherService.fetchCountry { (countries) in
            print(countries?.first?.Name)
        }
        
    }
    
    //MARK: - Business logic
    
    func changeName() {
        guard let name = textLabel.text, name != "" else {
            showAlert()
            return
        }
        dataStore.saveNameInCache(name: name)
        print("Your name: \(name).")
    }
    
    //MARK: - User interface
    
    func showAlert() {
        let alert = UIAlertController(title: "WARNING", message: "Your name can't be empty", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okey", style: .default))
        self.present(alert, animated: true)
    }
    
    // MARK: - IBAction
    
    @IBAction func changeLabel(_ sender: Any) {
        textLabel.text = myTextField.text
        
        dataFetcherService.russianGames { (russianGames) in
            print(russianGames?.feed.results.first?.name)
        }

    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        changeName()
        
        dataFetcherService.fetchFreeGames { (freeGames) in
            print(freeGames?.feed.results.first?.name)
        }
        
        
        dataFetcherService.fetchCarUsers { (carUsers) in
            print(carUsers?.all_users)
        
        }
        
        dataFetcherService.fetchLocalCountry { (localCountries) in
            print(localCountries?.last?.Name)
        
        }
    }
    
}

