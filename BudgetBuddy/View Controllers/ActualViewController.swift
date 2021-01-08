//
//  ActualViewController.swift
//  BudgetBuddy
//
//  Created by Kenneth Jones on 1/7/21.
//

import UIKit

class ActualViewController: UIViewController {
    
    @IBOutlet weak var rentTextField: UITextField!
    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var waterTextField: UITextField!
    @IBOutlet weak var internetTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var transportationTextField: UITextField!
    @IBOutlet weak var recreationTextField: UITextField!
    
    @IBOutlet weak var rentLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var waterLabel: UILabel!
    @IBOutlet weak var internetLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var transportationLabel: UILabel!
    @IBOutlet weak var recreationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Add Expense Amounts
    
    func showAddAlert(expenseCategory: String, textField: UITextField) {
        let alert = UIAlertController(title: expenseCategory, message: "Enter amount:", preferredStyle: .alert)
        
        var amountTextField: UITextField?
        
        alert.addTextField { (textField) in
            textField.placeholder = "Amount:"
            amountTextField = textField
        }
        
        let addAmountAction = UIAlertAction(title: "Add \(expenseCategory)", style: .default) { (_) in
            guard let amountText = amountTextField?.text else { return }
            
            textField.text = "$\(amountText)"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(addAmountAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addRent(_ sender: Any) {
        showAddAlert(expenseCategory: "Rent", textField: rentTextField)
    }
    
    @IBAction func addPower(_ sender: Any) {
        showAddAlert(expenseCategory: "Power", textField: powerTextField)
    }
    
    @IBAction func addWater(_ sender: Any) {
        showAddAlert(expenseCategory: "Water", textField: waterTextField)
    }
    
    @IBAction func addInternet(_ sender: Any) {
        showAddAlert(expenseCategory: "Internet", textField: internetTextField)
    }
    
    @IBAction func addPhone(_ sender: Any) {
        showAddAlert(expenseCategory: "Phone", textField: phoneTextField)
    }
    
    @IBAction func addFood(_ sender: Any) {
        showAddAlert(expenseCategory: "Food", textField: foodTextField)
    }
    
    @IBAction func addTransportation(_ sender: Any) {
        showAddAlert(expenseCategory: "Transportation", textField: transportationTextField)
    }
    
    @IBAction func addRecreation(_ sender: Any) {
        showAddAlert(expenseCategory: "Recreation", textField: recreationTextField)
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
