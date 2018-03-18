//
//  LibraryAPI.swift
//  RWBlueLibrary
//
//  Created by Laurence Wingo on 3/7/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation

final class LibraryAPI {
  
  static let shared = LibraryAPI()
  
  private let httpClient = HTTPClient()
  
  private let persistencyManager = PersistencyManager()
  
  private let isOnline = false
  
  private init() {
  }
  
  func getAlbums() -> [Album] {
    return persistencyManager.getAlbums()
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    persistencyManager.addAlbum(album, at: index)
    
    if isOnline {
      httpClient.postRequest("/api/addAlbum", body: album.description)
    }
  }
  
  func deleteAlbum(at index: Int) {
    persistencyManager.deleteAlbum(at: index)
    
    if isOnline{
      httpClient.postRequest("/api/deleteAlbum", body: "\(index)")
    }
  }
}
