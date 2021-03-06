//
//  HomePresenter.swift
//  VIP_TEST
//
//  Created by OuSS on 2/23/20.
//  Copyright (c) 2020 OuSS. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomePresentationLogic
{
  func presentArtists(response: Artists.List.Response)
}

class HomePresenter: HomePresentationLogic
{
  weak var viewController: HomeDisplayLogic?
  
  // MARK: Do something
  
  func presentArtists(response: Artists.List.Response)
  {
    var viewModel = Artists.List.ViewModel()
    viewModel.artists = response.feed.results
    viewController?.displayArtists(viewModel: viewModel)
  }
}
