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
    private let cellPerRow: CGFloat = 2
    private let paddingWithCell: CGFloat = 2
    private let minimumLineSpacing: CGFloat = 4
    private let minimumInteritemSpacing: CGFloat = 4
    
    // MARK: -
    // MARK: Initializer
    required init(collectionView: UICollectionView) {
        self.collectionView = collectionView
        
        super.init()
        
        registerCells()
        setupCollectionView()
    }
}

extension MovieListDataSource {
    // MARK: -
    // MARK: Private Functions
    private func registerCells() {
        collectionView?.registerReusableCell(MovieCollectionViewCell.self)
    }
    private func setupCollectionView() {
        collectionView?.showsVerticalScrollIndicator = false
        collectionView?.bounces = false
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
    // MARK: -
    // MARK: Functions
    func setup() {
        collectionView?.reloadData()
    }
}

extension MovieListDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieCollectionViewCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        return cell
    }
}

extension MovieListDataSource: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthCell: CGFloat = (collectionView.frame.size.width / cellPerRow) - paddingWithCell
        let heightCell: CGFloat = widthCell * 1.3
        return CGSize(width: widthCell, height: heightCell)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return minimumLineSpacing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return minimumInteritemSpacing
    }    
}
