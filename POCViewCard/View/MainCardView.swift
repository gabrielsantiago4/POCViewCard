//
//  MainCardView.swift
//  POCViewCard
//
//  Created by Paulo Henrique Gomes da Silva on 23/11/22.
//

import UIKit

class MainCardView: UIView {

    let viewCard = ViewCard()

    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension MainCardView: ViewCoding {
    func setupView() {
        viewCard.translatesAutoresizingMaskIntoConstraints = false
        viewCard.layer.cornerRadius = 15
    }

    func setupHierarchy() {
        addSubview(viewCard)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            viewCard.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            viewCard.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            viewCard.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.5),
            viewCard.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8)
        ])
    }
}
