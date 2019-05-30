//
//  HomePresenter.swift
//  DriveEye
//
//  Created by ashraf on 5/29/19.
//  Copyright © 2019 java. All rights reserved.
//

import  Foundation
class HomePresenter: NSObject   {
    var delegate : HomeViewProtocol?

    override init() {
        
    }
    func attachView( view :HomeViewProtocol){
        self.delegate? = view 
    }
    func getCurrentLoation() {
      
    }
 
  
 
}

