//
//  ViewController.swift
//  Bai2. - Square Control
//
//  Created by BinhPQ on 10/4/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var x1 = 100
    var y1 = 200
    var stepmove = 10
    var rect = CGRect(x: 100, y: 200, width: 10, height: 10)
    var childView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        childView = UIView(frame: rect)
        childView!.backgroundColor = UIColor.red
        // add view con vao
        self.view.backgroundColor = UIColor.gray
        self.view.addSubview(childView!)
        
        
    }
    
    //general move function
    func moveSquare (x1: Int, y1: Int, width: Int, height: Int){

    if (x1 < width) && (y1 < height) && (x1 > 0) && (y1 > 0)
        {
            childView?.removeFromSuperview()
            rect = CGRect(x: x1, y: y1, width: 10, height: 10)
            childView = UIView(frame: rect)
            childView!.backgroundColor = UIColor.red
            self.view.addSubview(childView!)
        }
    }
    
    //actions
    @IBAction func moveDownSquare(_ sender: Any) {
        //lay gia tri kich thuoc man hinh
        let s = self.view.frame.size
        
        if y1 < Int(s.height) - 10 {
            if y1 + stepmove < Int(s.height) {
                y1 = y1 + stepmove
            }
            else {
            y1 = y1 + 1
            }
        }
        moveSquare(x1: x1, y1: y1, width: Int(s.width), height: Int(s.height))
        
    }
    
    @IBAction func moveRightSquare(_ sender: Any) {
        let s = self.view.frame.size
        
        if x1 < Int(s.width) - 10 {
            if x1 + stepmove < Int(s.width) {
            x1 = x1 + stepmove}
            else{
            x1 = x1 + 1}
        }
        moveSquare(x1: x1, y1: y1, width: Int(s.width), height: Int(s.height))
    }
    
    @IBAction func moveLeftSquare(_ sender: Any) {
        let s = self.view.frame.size
        if x1 > 0 {
            if x1 - stepmove > 0 {
                x1 = x1 - stepmove}
            else{
                x1 = x1 - 1}
        }
        moveSquare(x1: x1, y1: y1, width: Int(s.width), height: Int(s.height))
    }
    
    @IBAction func moveUpSquare(_ sender: Any) {
        let s = self.view.frame.size
        if y1 > 30 {
            if y1 - stepmove > 0 {
                y1 = y1 - stepmove}
            else{
                y1 = y1 - 1}
        }
        
        moveSquare(x1: x1, y1: y1, width: Int(s.width), height: Int(s.height))
        
    }
}

