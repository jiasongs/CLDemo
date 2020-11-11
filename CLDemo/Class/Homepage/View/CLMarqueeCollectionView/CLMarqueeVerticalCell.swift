//
//  CLDrawMarqueeVerticalCell.swift
//  CLDemo
//
//  Created by Chen JmoVxia on 2020/11/10.
//  Copyright © 2020 JmoVxia. All rights reserved.
//

import UIKit

class CLMarqueeVerticalCell: UICollectionViewCell {
    lazy var label: CLVerticalLabel = {
        let view = CLVerticalLabel()
        view.verticalAlignment = .alignmentMiddle
        view.backgroundColor = UIColor.orange.withAlphaComponent(0.5)
        view.numberOfLines = 0
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.width.equalTo(20)
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
