//
//  MovieCollectionViewCell.swift
//  Amet_Example
//
//  Created by Leo Canhette on 20/06/21.
//

import UIKit

final class MovieCollectionViewCell: UICollectionViewCell, Reusable {
    
    // MARK: -
    // MARK: Constants ans Variables
    private let coverImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .purple
        return imageView
    }()
    
    // MARK: -
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
}


extension MovieCollectionViewCell {
    // MARK: -
    // MARK: Private Functions
    private func commonInit() {
        backgroundColor = .brown
        setupView()
    }
    private func setupView() {
        addSubview(coverImageView, constraints: [
            coverImageView.widthAnchor.constraint(equalTo: widthAnchor, constant: -10),
            coverImageView.heightAnchor.constraint(equalTo: heightAnchor, constant: -10),
            coverImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            coverImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
