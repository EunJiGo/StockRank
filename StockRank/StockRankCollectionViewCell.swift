//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 고은지 on 2022/11/06.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    // UIComponent 연결
    // UIComponent에 데이터를 업데이트하는 코드 넣기
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var companyIconImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyPriceLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(stock.price) 원"
        diffLabel.text = "\(stock.diff)%"
    }
}
