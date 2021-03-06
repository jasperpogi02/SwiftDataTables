//
//  DataHeaderFooter.swift
//  SwiftDataTables
//
//  Created by Pavan Kataria on 22/02/2017.
//  Copyright © 2017 Pavan Kataria. All rights reserved.
//

import UIKit

class DataHeaderFooter: UICollectionReusableView {

    //MARK: - Properties
    @IBOutlet var titleLabel: UILabel!

    //MARK: - Events
    var didTapEvent: (() -> Void)? = nil

    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(DataHeaderFooter.didTapView))
        self.addGestureRecognizer(tapGesture)
    }
    
    func setup(viewModel: DataHeaderFooterViewModel) {
        self.titleLabel.font = viewModel.font
        self.titleLabel.textColor = viewModel.fontColor
        self.titleLabel.text = viewModel.data
        self.backgroundColor = viewModel.bgColor
    }
    @objc func didTapView(){
        self.didTapEvent?()
    }
}
