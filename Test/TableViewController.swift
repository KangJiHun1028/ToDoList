//
//  TableViewController.swift
//  Test
//
//  Created by t2023-m0053 on 2023/08/10.
//

import UIKit

class TableViewController:UIViewController{
    
    @IBOutlet weak var TableView: UITableView!
    
    
    
    
    @IBAction func clickButton(_ sender: Any) {
        
        list.append(cellData(name:"첫번째 셀",onOff:true))
        
        TableView.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
    }
}
extension TableViewController:UITableViewDelegate{
    
}
extension TableViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! CellView
        
        cell.index = indexPath
        
        cell.label?.text = list[indexPath.row].name
        if list[indexPath.row].onOff == true {
            cell.onOffSwitch.isOn = true
        }else{
            cell.onOffSwitch.isOn = false
        }
        
        return cell
    }
    
    
}

