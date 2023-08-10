//
//  Data.swift
//  Test
//
//  Created by t2023-m0053 on 2023/08/10.
//

import Foundation

var list:[cellData] = [cellData(name:"첫번째 셀",onOff:true),
                       cellData(name:"두번째 셀",onOff:false),
                       cellData(name:"세번째 셀",onOff:true),
                       cellData(name:"네번째 셀",onOff:false),
                       cellData(name:"다섯번째 셀",onOff:true),
                       cellData(name:"여섯번째 셀",onOff:false)]


struct cellData {
    var name:String
    var onOff:Bool
}
