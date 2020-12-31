//
//  TouchViewController.swift
//  TestBundlePath
//
//  Created by ZhangLe on 2020/10/12.
//  Copyright © 2020 AsiaInfo Mobile. All rights reserved.
//

import UIKit

class HitTestView: UIView {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        print(view as Any, event?.allTouches?.first as Any)
        return view
    }
}

class HitTestButton: UIButton {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        print(view as Any, event?.allTouches?.first as Any)
        return view
    }
}

class HitTestControl: UIControl {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        print(view as Any, event?.allTouches?.first as Any)
        return view
    }
}

class TouchViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let screenWidth = UIScreen.main.bounds.size.width
        
        let tapGes = UITapGestureRecognizer.init(target: self, action: #selector(tapAction))
//        tapGes.delegate = self
        let blueView = HitTestView.init(frame: CGRect.init(x: 0, y: 100, width: screenWidth, height: 500))
        blueView.backgroundColor = .systemBlue
        blueView.addGestureRecognizer(tapGes)
        view.addSubview(blueView)
        
        let button = HitTestButton.init(type: .system)
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .systemGray
        button.frame = CGRect.init(x: 50, y: 50, width: 150, height: 50)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        blueView.addSubview(button)
        
        let control = HitTestControl()
        control.frame = CGRect.init(x: 50, y: 200, width: 150, height: 50)
        control.backgroundColor = .systemPink
        control.addTarget(self, action: #selector(controlAction), for: .touchUpInside)
        blueView.addSubview(control)
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                           shouldReceive touch: UITouch) -> Bool {
        return !touch.view!.isKind(of: UIControl.self)
    }
    
    @objc func tapAction() {
        print("Blue view touched.")
    }
    
    @objc func buttonAction() {
        print("Button touched.")
    }
    
    @objc func controlAction() {
        print("Control touched.")
    }

}
