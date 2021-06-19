//
//  MovieListViewController.swift
//  Amet_Example
//
//  Created by Leo Canhette on 19/06/21.
//

import UIKit

final class MovieListViewController: UIViewController {
    
    // MARK: -
    // MARK: Constants and Variables
    private let movieSearchBar: UISearchBar = {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.placeholder = "Pesquise pelo titulo."
        return searchBar
    }()
    private let movieCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    // MARK: -
    // MARK: Life cycle
    override func loadView() {
        super.loadView()
        setupView()
        setupLayout()
    }
    
}

extension MovieListViewController {
    // MARK: -
    // MARK: Private Functions
    private func setupView() {
        view.addSubview(movieSearchBar, constraints: [
            movieSearchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            movieSearchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            movieSearchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            movieSearchBar.heightAnchor.constraint(equalToConstant: 50)
        ])
        view.addSubview(movieCollectionView, constraints: [
            movieCollectionView.topAnchor.constraint(equalTo: movieSearchBar.bottomAnchor, constant: 20),
            movieCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            movieCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            movieCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    private func setupLayout() {
        view.backgroundColor = .white
        movieCollectionView.backgroundColor = .gray
    }
}
