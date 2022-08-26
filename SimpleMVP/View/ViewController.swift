//
//  ViewController.swift
//  SimpleMVP
//
//  Created by MacBook Pro on 25/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    /* TODO :
     Example 1
     */
    var button = makeButton(withText: "Start Game")
    var label = makeLabel(withTitle: "Paused")
    
    lazy var presenter =  Presenter(with: self)
    /* TODO :
     Example 2
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /* TODO :
         Example 1
         */
        self.layout()
        
        
        /* TODO :
         Example 2
         */
        
    }
    /* TODO :
     Example 1
     */
    func layout() {
        
        button.addTarget(self, action: #selector(startGame(sender:)), for: .primaryActionTriggered)
        view.addSubview(button)
        view.addSubview(label)
        self.button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        self.label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.label.topAnchor.constraint(equalToSystemSpacingBelow: self.button.bottomAnchor, multiplier: 3).isActive = true
        
    }
    @objc func startGame(sender : Any?) {
        presenter.startGame()
    }

}



