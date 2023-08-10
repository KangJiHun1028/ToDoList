//
//  TableViewController.swift
//  Test
//
//  Created by t2023-m0053 on 2023/08/10.
//

import UIKit

class TableViewController:UIViewController{
    
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
    }
}
extension TableViewController:UITableViewDelegate{
    
}
extension TableViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! CellView
            
        cell.label.text = "메모"
        
        return cell
    }
    
    
}

