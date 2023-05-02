//
//  TableViewController.swift
//  不同Cell樣式的TableVIew練習
//
//  Created by 林仲景 on 2023/4/29.
//

import UIKit

class TableViewController: UITableViewController {
   
    let userServices:[userService] = [
        userService(model: "alertModel", title: "", image: ""),
        userService(model: "serviceModel", title: "立即訂票", image: "立即訂票"),
        userService(model: "serviceModel", title: "列車時刻查詢", image: "列車時刻查詢"),
        userService(model: "serviceModel", title: "車次查詢", image: "車次查詢"),
        userService(model: "serviceModel", title: "車站列車動態", image: "車站列車動態")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
//        let backgroundView = UIView()
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = tableView.bounds
//        backgroundView.frame = tableView.bounds
//        gradientLayer.colors = [
//        CGColor(red: 1, green: 1, blue: 1, alpha: 1),
//        CGColor(red: 223/255, green: 234/255, blue: 246/255, alpha: 1),
//        CGColor(red: 1, green: 1, blue: 1, alpha: 1)
//        ]
//        gradientLayer.locations = [0.03,0.03,0.7]
//        backgroundView.layer.addSublayer(gradientLayer)
//        tableView.backgroundView = backgroundView
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = tableView.bounds
        gradientLayer.colors = [
        CGColor(red: 1, green: 1, blue: 1, alpha: 1),
        CGColor(red: 223/255, green: 234/255, blue: 246/255, alpha: 1),
        CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        ]
        gradientLayer.locations = [0.03,0.03,0.7]
        tableView.layer.insertSublayer(gradientLayer, at: 0)
    }

    
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let userService = userServices[indexPath.section]
        //共有5個section，每個section有1個cell，共5個cell
        //如果有遇到model是alertModel，就把那個cell設定成AlertTableViewCell
        if userService.model=="alertModel"{
            tableView.rowHeight = 130
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(AlertTableViewCell.self)", for: indexPath)as!AlertTableViewCell
            cell.layer.borderWidth = 3
            cell.layer.borderColor = .init(red: 169/255, green: 208/255, blue: 141/255, alpha: 1)
            cell.backgroundColor = .gray
            //MARK: - Label的property
            cell.ticketCheckLabel.text="0"
            cell.ticketCheckLabel.textAlignment = .center
            cell.ticketCheckLabel.textColor = .red
            cell.ticketCheckLabel.font = UIFont.boldSystemFont(ofSize: 17)
            cell.unpaidCheckLabel.text="0"
            cell.unpaidCheckLabel.textAlignment = .center
            cell.unpaidCheckLabel.textColor = .red
            cell.unpaidCheckLabel.font = UIFont.boldSystemFont(ofSize: 17)
            cell.unticketedCheckLabel.text="0"
            cell.unticketedCheckLabel.textAlignment = .center
            cell.unticketedCheckLabel.textColor = .red
            cell.unticketedCheckLabel.font = UIFont.boldSystemFont(ofSize: 17)

            //MARK: - ticketCheckButton的property
            cell.ticketCheckButton.configuration?.background.image = UIImage(named: "行動車票")
            cell.ticketCheckButton.configuration?.background.imageContentMode = .scaleAspectFit
            cell.ticketCheckButton.backgroundColor = .white
            //MARK: - unpaidCheckButton的property
            cell.unpaidCheckButton.configuration?.background.image = UIImage(named: "未付款")
            cell.unpaidCheckButton.configuration?.background.imageContentMode = .scaleAspectFit
            cell.unpaidCheckButton.backgroundColor = .white
            //MARK: - unticketedCheckButton的property
            cell.unticketedCheckButton.configuration?.background.image = UIImage(named: "未取票")
            cell.unticketedCheckButton.configuration?.background.imageContentMode = .scaleAspectFit
            cell.unticketedCheckButton.backgroundColor = .white
            
            return cell
        }else{
            //否則要載入FunctionTableViewCell樣式的cell
            tableView.rowHeight = 65
            let cell = tableView.dequeueReusableCell(withIdentifier: "\(FunctionTableViewCell.self)", for: indexPath)as!FunctionTableViewCell
            cell.layer.borderWidth = 1
            cell.layer.borderColor = .init(red: 169/255, green: 208/255, blue: 141/255, alpha: 1)
            cell.serviceImageView.image = UIImage(named: userService.image)
            cell.serviceLabel.text = userService.title
            cell.serviceLabel.font = UIFont.boldSystemFont(ofSize: 20)

            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "🔔車廂寧靜宣導，共同維護乘車品質"
        }
        return ""
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if section == 0{
            guard let header = view as? UITableViewHeaderFooterView else{
                return
            }
            header.textLabel?.textColor = .black
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
