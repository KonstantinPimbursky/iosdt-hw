//
//  TableViewCell.swift
//  DataStorage
//
//  Created by Konstantin Pimbursky on 22.05.2021.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    var photoImage: UIImage? {
        didSet {
            photoImageView.image = photoImage
        }
    }
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(photoImageView)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        let constraints = [
            photoImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            photoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            photoImageView.heightAnchor.constraint(equalTo: contentView.widthAnchor),
            photoImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}
