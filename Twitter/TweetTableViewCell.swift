//
//  TweetTableViewCell.swift
//  Twitter
//
//  Created by Orlando Vargas on 9/25/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    static let identifier = "TweetCell"
    
    var titleLabel = OVTitleLabel(textAlignment: .center, fontSize: 16)
    var bodyLabel = OVBodyLabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        backgroundColor = .yellow
        print("I'm being called")
        //viewHelp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        let tempView = UIView()
        tempView.backgroundColor = .yellow
        addSubview(titleLabel)
        titleLabel.backgroundColor = .blue
        addSubview(bodyLabel)
        addSubview(tempView)
        tempView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tempView.topAnchor.constraint(equalTo: topAnchor),
            tempView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tempView.widthAnchor.constraint(equalToConstant: 64),
            tempView.bottomAnchor.constraint(equalTo: topAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
