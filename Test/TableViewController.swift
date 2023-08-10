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
        let alert = UIAlertController(title: "입력하세요", message: "추가할 내용을 적어주세요", preferredStyle: .alert)
        
        let input = UIAlertAction(title: "입력", style: .default) { (input) in
            print("ok")
            
            guard let name = alert.textFields?[0].text else {return}
            list.append(cellData(name: name, onOff: false))
            self.TableView.reloadData()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) { (cancel) in
            print("no")
        }
        
        alert.addTextField()
        alert.addAction(input)
        alert.addAction(cancel)
        
        self.present(alert, animated: true)
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

