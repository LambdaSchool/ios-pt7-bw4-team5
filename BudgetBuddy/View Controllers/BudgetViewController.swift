//
//  BudgetViewController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import UIKit

class BudgetViewController: UIViewController {
    
    @IBOutlet weak var rentTextField: UITextField!
    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var waterTextField: UITextField!
    @IBOutlet weak var internetTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var transportationTextField: UITextField!
    @IBOutlet weak var recreationTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Enter Budget Amounts
    
    func showAddAlert(budgetCategory: String, textField: UITextField) {
        let alert = UIAlertController(title: budgetCategory, message: "Enter budget amount:", preferredStyle: .alert)
        
        var amountTextField: UITextField?
        
        alert.addTextField { (textField) in
            textField.placeholder = "Amount:"
            amountTextField = textField
        }
        
        let addAmountAction = UIAlertAction(title: "Add \(budgetCategory)", style: .default) { (_) in
            guard let amountText = amountTextField?.text else { return }
            
            textField.text = "$\(amountText)"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(addAmountAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addRent(_ sender: Any) {
        showAddAlert(budgetCategory: "Rent", textField: rentTextField)
    }
    
    @IBAction func addPower(_ sender: Any) {
        showAddAlert(budgetCategory: "Power", textField: powerTextField)
    }
    
    @IBAction func addWater(_ sender: Any) {
        showAddAlert(budgetCategory: "Water", textField: waterTextField)
    }
    
    @IBAction func addInternet(_ sender: Any) {
        showAddAlert(budgetCategory: "Internet", textField: internetTextField)
    }
    
    @IBAction func addPhone(_ sender: Any) {
        showAddAlert(budgetCategory: "Phone", textField: phoneTextField)
    }
    
    @IBAction func addFood(_ sender: Any) {
        showAddAlert(budgetCategory: "Food", textField: foodTextField)
    }
    
    @IBAction func addTransportation(_ sender: Any) {
        showAddAlert(budgetCategory: "Transportation", textField: transportationTextField)
    }
    
    @IBAction func addRecreation(_ sender: Any) {
        showAddAlert(budgetCategory: "Recreation", textField: recreationTextField)
    }
    
    // MARK: - Add Payment Reminders
    
    @IBAction func rentRemindMe(_ sender: Any) {
    }
    
    @IBAction func powerRemindMe(_ sender: Any) {
    }
    
    @IBAction func waterRemindMe(_ sender: Any) {
    }
    
    @IBAction func internetRemindMe(_ sender: Any) {
    }
    
    @IBAction func phoneRemindMe(_ sender: Any) {
    }
    
    @IBAction func foodRemindMe(_ sender: Any) {
    }
    
    @IBAction func transportationRemindMe(_ sender: Any) {
    }
    
    @IBAction func recreationRemindMe(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
