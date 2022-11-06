//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 고은지 on 2022/11/06.
//

import UIKit

class StockRankViewController: UIViewController {
    
    
    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Data, Presentaiton, Layout
    // Data : 어떤 데이터를 사용할거야? -> stockList
    // Presentation :  셀을 어떻게 표현할거야?
    // Layout : 셀들 레이아웃 어떻게 할거야?//
    // 이것을 UICollectionView에 알려줘야한다!
    
    // dataSource와 delegate는 protocol이다
    // protocol : 규칙!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    

}


extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count // 데이터 개수, 셀 개수
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let stock = stockList[indexPath.item]
        cell?.configure(stock)
        return cell
        
//        return UICollectionViewCell
        
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // width : collectonView와 같다
        // height : 80
        return CGSize(width: collectionView.bounds.width, height: 80) // 싱글컬럼 만들어줌
    }
}
