//
//  MovieListDataSource.swift
//  Amet_Example
//
//  Created by Leo Canhette on 20/06/21.
//

import UIKit

final class MovieListDataSource: NSObject {
    
    // MARK: -
    // MARK: Constants and Variables
    private weak var collectionView: UICollectionView?
    
    // MARK: -
    // MARK: Initializer
    required init(collectionView: UICollectionView) {
        self.collectionView = collectionView
        
        super.init()
        
        setupCollectionView()
    }
}

extension MovieListDataSource {
    // MARK: -
    // MARK: Private Functions
    private func setupCollectionView() {
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellID")
        collectionView?.dataSource = self
    }
    // MARK: -
    // MARK: Functions
    func setup() {
        collectionView?.reloadData()
    }
}

extension MovieListDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
