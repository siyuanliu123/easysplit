//
//  LinkbankViewController.swift
//  easysplit
//
//  Created by siyuan liu on 2022/7/18.
//

import UIKit

class LinkbankViewController: UIViewController {
    @IBOutlet weak var Linkbank: UITableView!
    private let payments = [PaymentWay(name: "PayPal", image: #imageLiteral(resourceName: "PayPal")), PaymentWay(name: "Venmo Pay", image: #imageLiteral(resourceName: "Venmo Pay")), PaymentWay(name: "Google Pay", image: #imageLiteral(resourceName: "Google Pay")), PaymentWay(name: "Apple Pay", image: #imageLiteral(resourceName: "Apple Pay"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Link the bank"
        Linkbank.dataSource = self
        // Do any additional setup after loading the view.
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
extension LinkbankViewController: UITableViewDataSource {
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
         let payment = payments[indexPath.row]
         let cell = tableView.dequeueReusableCell(withIdentifier: "linkCell", for: indexPath) as!
         LinkViewCell
         cell.update(with: payment)
         return cell
     }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return payments.count
    }
 }
struct PaymentWay{
    let name: String
    let image: UIImage
}
