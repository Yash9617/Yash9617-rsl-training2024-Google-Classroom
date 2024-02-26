//
//  CustomView.swift
//  AutoLayoutAssignment
//
//  Created by Yashasvi Sharma  on 26/02/24.
//

import UIKit

class CustomView: UIView {
    
    var randomInt: Int?
    var randomValueLabel = UILabel()
    var list: Array<Int>?
    var scoreValueLabel = UILabel()
    var infoButton = UIButton()
    var initialLabel = UILabel()
    var hitMeLabel = UILabel()
    var headingLabel = UILabel()
    var finalLabel = UILabel()
    var roundLabel = UILabel()
    var roundValueLabel = UILabel()
    var startOverlLabel = UIButton()
    var scoreDisplayLabel = UILabel()
    var slider = UISlider()
    var points: Int?
    var toggleShow: Bool = false
    var label = UILabel()
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customViewInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customViewInit()
    }
    
    func customViewInit() {
        list = [Int]()
        points = 0
        self.backgroundColor = .systemPink
        randomInt = Int.random(in: 0...100)
        print(randomInt ?? 0)
        
        initialLabel = UILabel(frame: CGRectZero)
        initialLabel.translatesAutoresizingMaskIntoConstraints = false
        initialLabel.text = "1"
        addSubview(initialLabel)

        headingLabel = UILabel(frame: CGRectZero)
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.text = "Try to hit as close as posible to:"
        addSubview(headingLabel)

        randomValueLabel = UILabel(frame: CGRectZero)
        randomValueLabel.translatesAutoresizingMaskIntoConstraints = false
        randomValueLabel.text = "\(randomInt ?? 0)"
        addSubview(randomValueLabel)

        slider = UISlider(frame: CGRectZero)
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.isContinuous = false
        slider.addTarget(self, action: #selector(onSliderValueChange(_:)), for: .valueChanged)
        addSubview(slider)

        finalLabel = UILabel(frame: CGRectZero)
        finalLabel.translatesAutoresizingMaskIntoConstraints = false
        finalLabel.text = "100"
        addSubview(finalLabel)

        hitMeLabel = UILabel(frame: CGRectZero)
        hitMeLabel.translatesAutoresizingMaskIntoConstraints = false
        hitMeLabel.text = "Hit Me"
        hitMeLabel.font = UIFont(name: "MarkerFelt-Thin", size: 24)
        hitMeLabel.textColor = .blue
        addSubview(hitMeLabel)

        startOverlLabel = UIButton(frame: CGRectZero)
        startOverlLabel.translatesAutoresizingMaskIntoConstraints = false
        startOverlLabel.setTitle("Start Over", for: .normal)
        startOverlLabel.addTarget(self, action: #selector(onResetValue), for: .touchUpInside)
        startOverlLabel.setTitleColor(.blue, for: .normal)
        addSubview(startOverlLabel)

        scoreDisplayLabel = UILabel(frame: CGRectZero)
        scoreDisplayLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreDisplayLabel.text = "Score: "
        scoreDisplayLabel.font = UIFont(name: "MarkerFelt-Thin", size: 18)
        scoreDisplayLabel.textColor = .black
        addSubview(scoreDisplayLabel)

        scoreValueLabel = UILabel(frame: CGRectZero)
        scoreValueLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreValueLabel.text = "0"
        scoreValueLabel.font = UIFont(name: "MarkerFelt-Thin", size: 18)
        scoreValueLabel.textColor = .black
        addSubview(scoreValueLabel)

        roundLabel = UILabel(frame: CGRectZero)
        roundLabel.translatesAutoresizingMaskIntoConstraints = false
        roundLabel.text = "Round: "
        roundLabel.font = UIFont(name: "MarkerFelt-Thin", size: 18)
        roundLabel.textColor = .black
        addSubview(roundLabel)

        roundValueLabel = UILabel(frame: CGRectZero)
        roundValueLabel.translatesAutoresizingMaskIntoConstraints = false
        roundValueLabel.text = "1"
        roundValueLabel.font = UIFont(name: "MarkerFelt-Thin", size: 18)
        roundValueLabel.textColor = .black
        addSubview(roundValueLabel)

        infoButton = UIButton(frame: CGRectZero)
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        infoButton.setTitle("Info", for: .normal)
        infoButton.setTitleColor(.blue, for: .normal)
        infoButton.addTarget(self, action:#selector(onButtonClick), for: .touchUpInside)
        addSubview(infoButton)
        
        label = UILabel(frame: CGRectZero)
        label.textColor = .black
        label.text = ""
        addSubview(label)
        
        addConstraints()
    }
    
    private func addConstraints() {
        headingLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        headingLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60).isActive = true
        
        randomValueLabel.leadingAnchor.constraint(equalTo: headingLabel.trailingAnchor, constant: 10).isActive = true
        randomValueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60).isActive = true
        
        initialLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60).isActive = true
        initialLabel.topAnchor.constraint(equalTo: randomValueLabel.bottomAnchor, constant: 100).isActive = true
        
        slider.leadingAnchor.constraint(equalTo: initialLabel.trailingAnchor, constant: 10).isActive = true
        slider.topAnchor.constraint(equalTo: randomValueLabel.bottomAnchor, constant: 100).isActive = true
        
        finalLabel.topAnchor.constraint(equalTo: randomValueLabel.bottomAnchor, constant: 100).isActive = true
        finalLabel.leadingAnchor.constraint(equalTo: slider.trailingAnchor, constant: 10).isActive = true
        finalLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        
        hitMeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        hitMeLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20).isActive = true

        startOverlLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        startOverlLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        
        scoreDisplayLabel.leadingAnchor.constraint(equalTo: startOverlLabel.trailingAnchor, constant: 10).isActive = true
        scoreDisplayLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -37).isActive = true
        
        scoreValueLabel.leadingAnchor.constraint(equalTo: scoreDisplayLabel.trailingAnchor, constant: 5).isActive = true
        scoreValueLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -37).isActive = true
        
        infoButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        infoButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        
        roundValueLabel.trailingAnchor.constraint(equalTo: infoButton.leadingAnchor, constant: -10).isActive = true
        roundValueLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -37).isActive = true
        
        roundLabel.trailingAnchor.constraint(equalTo: roundValueLabel.leadingAnchor, constant: -5).isActive = true
        roundLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -37).isActive = true
        
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60).isActive = true
        label.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 100).isActive = true
    }
    
    @objc func onResetValue() {
        points = 0
        roundValueLabel.text = "0"
        scoreValueLabel.text = "1"
        list = []
    }
    
    @objc func onSliderValueChange(_ sender: UISlider) {
        let value = Int(sender.value)
        let diff = abs(value - randomInt!)
        list?.append(100 - diff)
        points = points! + 100 - diff
        scoreValueLabel.text = String(points!)
        randomInt = Int.random(in: 0...100)
        randomValueLabel.text = "\(randomInt ?? 0)"
        if let roundVal = Int((roundValueLabel.text)!) {
            roundValueLabel.text = String(roundVal + 1)
        }
    }
    
    
    @objc func onButtonClick() {
        toggleShow = !toggleShow
        if list != nil && toggleShow == true {
            label.text = "Round scores:"
            for num in list! {
                label.text = (label.text ?? "0") + "\(num) "
            }
        } else {
            label.text = ""
        }
    }

}
