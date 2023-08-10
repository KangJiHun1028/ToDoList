//
//  CellView.swift
//  Test
//
//  Created by t2023-m0053 on 2023/08/10.
//

import UIKit

class CellView:UITableViewCell{
        
    var index:IndexPath?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var onOffSwitch: UISwitch!

    @IBAction func onOffChange(_ sender: UISwitch) {
        list[index?.row ?? 0].onOff = onOffSwitch.isOn
        print("스위치 On/Off")
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
