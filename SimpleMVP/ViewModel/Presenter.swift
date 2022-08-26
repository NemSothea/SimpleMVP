//
//  Presenter.swift
//  SimpleMVP
//
//  Created by MacBook Pro on 26/8/22.
//

import Foundation
protocol PresenterView : AnyObject {
    func updateGame(_ model : GameViewData)
}
///  Presenter - A mediator between the model the view.
class Presenter {
    weak var view : PresenterView?
    
    init(with view : PresenterView) {
        self.view = view
    }
    
    let callOfDuty = Game(name: "Call Of Duty", year: "2001", author: "USA.A")
    @objc func startGame() {
        let game = GameViewData(name: callOfDuty.name)
        view?.updateGame(game)
    }
    
}



extension ViewController : PresenterView {
    func updateGame(_ model: GameViewData) {
        label.text = model.name
        self.view.backgroundColor = .yellow
    }
    
}

