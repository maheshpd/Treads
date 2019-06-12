//
//  RunLogCell.swift
//  Treads
//
//  Created by Mahesh Prasad on 12/06/19.
//  Copyright © 2019 CreatesApps. All rights reserved.
//

import UIKit

class RunLogCell: UITableViewCell {

    @IBOutlet weak var runDurationLbl: UILabel!
    @IBOutlet weak var totalDistanceLbl: UILabel!
    @IBOutlet weak var avegeragePaceLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(run: Run) {
        runDurationLbl.text = run.duration.formatTimeDurationToString()
        totalDistanceLbl.text = "\(run.distance.metersToKm(place: 2)) mi"
        avegeragePaceLbl.text = run.pace.formatTimeDurationToString()
        dateLbl.text = run.date.getDateString()
    }


}
