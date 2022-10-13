//
//  LoginViewController.swift
//  easysplit
//
//  Created by siyuan liu on 2022/7/18.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    private let bankaccounts = [Bank(name: "American Express", image: #imageLiteral(resourceName: "American Express")), Bank(name: "Capital One", image: #imageLiteral(resourceName: "Capital One")), Bank(name: "J P Moagan", image: #imageLiteral(resourceName: "J P Morgan")), Bank(name: "Citi Bank", image: #imageLiteral(resourceName: "Citi Bank")), Bank(name: "Discover", image: #imageLiteral(resourceName: "Discover")), Bank(name: "U.S. Bank", image: #imageLiteral(resourceName: "U.S. Bank")), Bank(name: "Wells Fargo", image: #imageLiteral(resourceName: "Wells Fargo"))]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        title = "Log in to your account"
        // Do any additional setup after loading the view.
    }
}
   extension LoginViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            let bankaccount = bankaccounts[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "accountCell", for: indexPath) as!
            accountTableViewCell
            cell.update(with: bankaccount)
            return cell
        }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
           return bankaccounts.count
       }
    }
    struct Bank{
        let name: String
        let image: UIImage
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


