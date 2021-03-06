//
//  SecondViewController.swift
//  TestBundlePath
//
//  Created by ZhangLe on 2020/7/17.
//  Copyright © 2020 AsiaInfo Mobile. All rights reserved.
//

import UIKit

public class SecondViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "Framework"
        view.backgroundColor = .white
        
        let bundle1 = Bundle.main
        let bundle2 = Bundle.init(for: SecondViewController.self)
        
        let path1 = bundle1.path(forResource: "orange", ofType: "png")
        let path2 = bundle2.path(forResource: "banana", ofType: "png")
        let path3 = bundle1.path(forResource: "image.bundle/peach", ofType: "png")
        let path4 = bundle2.path(forResource: "image.bundle/peach", ofType: "png")
        
        let label1 = UILabel()
        label1.frame = CGRect.init(x: 20, y: 80, width: 300, height: 150)
        label1.textAlignment = .left
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 14)
        label1.text = path1 == nil ? "未获取到路径" : path1
        label1.numberOfLines = 0
        view.addSubview(label1)
        
        let imageView1 = UIImageView()
        if let path = path1 {
            let image1 = UIImage.init(contentsOfFile: path)
            imageView1.image = image1
        }
        imageView1.backgroundColor = .systemPink
        imageView1.frame = CGRect.init(x: 330, y: 80, width: 80, height: 80)
        view.addSubview(imageView1)
        
        let label2 = UILabel()
        label2.frame = CGRect.init(x: 20, y: 240, width: 300, height: 150)
        label2.textAlignment = .left
        label2.textColor = .black
        label2.font = UIFont.systemFont(ofSize: 14)
        label2.text = path2
        label2.numberOfLines = 0
        view.addSubview(label2)
        
        let image2 = UIImage.init(contentsOfFile: path2!)
        let imageView2 = UIImageView.init(image: image2)
        imageView2.backgroundColor = .systemPink
        imageView2.frame = CGRect.init(x: 330, y: 240, width: 80, height: 80)
        view.addSubview(imageView2)
        
        let label3 = UILabel()
        label3.frame = CGRect.init(x: 20, y: 400, width: 300, height: 150)
        label3.textAlignment = .left
        label3.textColor = .black
        label3.font = UIFont.systemFont(ofSize: 14)
        label3.text = path3 == nil ? "未获取到路径" : path3
        label3.numberOfLines = 0
        view.addSubview(label3)
        
        let imageView3 = UIImageView()
        if let path = path3 {
            let image3 = UIImage.init(contentsOfFile: path)
            imageView3.image = image3
        }
        imageView3.backgroundColor = .systemPink
        imageView3.frame = CGRect.init(x: 330, y: 400, width: 80, height: 80)
        view.addSubview(imageView3)
        
        let label4 = UILabel()
        label4.frame = CGRect.init(x: 20, y: 560, width: 300, height: 150)
        label4.textAlignment = .left
        label4.textColor = .black
        label4.font = UIFont.systemFont(ofSize: 14)
        label4.text = path4
        label4.numberOfLines = 0
        view.addSubview(label4)
        
        let image4 = UIImage.init(contentsOfFile: path4!)
        let imageView4 = UIImageView.init(image: image4)
        imageView4.backgroundColor = .systemPink
        imageView4.frame = CGRect.init(x: 330, y: 560, width: 80, height: 80)
        view.addSubview(imageView4)
    }
}
