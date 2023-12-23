//
//  TeamTableViewCell.swift
//  BasicUIKitDemo
//
//  Created by NB1003517 on 23/12/2566 BE.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    // MARK: - UI
    
    private lazy var containerVw: UIView = {
       var vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackView: UIStackView = {
       var stackVwv = UIStackView()
        stackVwv.translatesAutoresizingMaskIntoConstraints = false
        stackVwv.spacing = 4
        stackVwv.axis = .vertical
        return stackVwv
    }()
    
    private lazy var badgeImgVw: UIImageView = {
       var imgVw = UIImageView()
        imgVw.translatesAutoresizingMaskIntoConstraints = false
        imgVw.contentMode = .scaleAspectFit
        return imgVw
    }()
    
    private lazy var playbackBtn: UIButton = {
       var btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tintColor = .white
        return btn
    }()
    
    private lazy var nameLbl: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var foundedLbl: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var jobLbl: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 10, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var infoLbl: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .medium)
        lbl.textColor = .white
        return lbl
    }()
    
    // MARK: - LifeCycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        containerVw.layer.cornerRadius = 10
    }
    
    
    func configure() {
        containerVw.backgroundColor = TeamType.arsenal.background
        
        badgeImgVw.image = TeamType.arsenal.badge
        playbackBtn.setImage(UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)), for: .normal)
        
        nameLbl.text = "Arsenal"
        foundedLbl.text = "October 1886"
        jobLbl.text = "Current Manager: Mikel Ateta"
        infoLbl.text = "Arsenal Football Club is a professional football club based in Islington, London, England, that plays in the Premier"
        
        self.contentView.addSubview(containerVw)
        
        containerVw.addSubview(contentStackView)
        containerVw.addSubview(badgeImgVw)
        containerVw.addSubview(playbackBtn)
        
        contentStackView.addArrangedSubview(nameLbl)
        contentStackView.addArrangedSubview(foundedLbl)
        contentStackView.addArrangedSubview(jobLbl)
        contentStackView.addArrangedSubview(infoLbl)
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor,constant: -8),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,constant: 8),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            
            badgeImgVw.heightAnchor.constraint(equalToConstant: 50),
            badgeImgVw.widthAnchor.constraint(equalToConstant: 50),
            badgeImgVw.topAnchor.constraint(equalTo: contentStackView.topAnchor),
            badgeImgVw.leadingAnchor.constraint(equalTo: containerVw.leadingAnchor, constant: 8),

            contentStackView.topAnchor.constraint(equalTo: containerVw.topAnchor, constant: 16),
            contentStackView.bottomAnchor.constraint(equalTo: containerVw.bottomAnchor, constant: -16),
            contentStackView.leadingAnchor.constraint(equalTo: badgeImgVw.trailingAnchor, constant: 8),
            contentStackView.trailingAnchor.constraint(equalTo: playbackBtn.leadingAnchor, constant: -8),
            
            playbackBtn.heightAnchor.constraint(equalToConstant: 44),
            playbackBtn.widthAnchor.constraint(equalToConstant: 44),
            playbackBtn.trailingAnchor.constraint(equalTo: containerVw.trailingAnchor, constant: -8),
            playbackBtn.centerYAnchor.constraint(equalTo: containerVw.centerYAnchor)
        ])
    }
}
