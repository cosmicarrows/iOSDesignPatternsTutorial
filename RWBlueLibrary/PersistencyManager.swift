//
//  PersistencyManager.swift
//  RWBlueLibrary
//
//  Created by Laurence Wingo on 3/7/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation

final class PersistencyManager {
  
  private var albums = [Album]()
 
  init() {
    
    //dummy list of albums
    let album1 = Album.init(title: "Mississippi Water", artist: "David Banner", genre: "Rap/Blue", coverUrl: "https://s3.amazonaws.com/CoverProject/album/album_david_bowie_best_of_bowie.png", year: "2000")
    
    let album2 = Album.init(title: "1st", artist: "Willow Smith", genre: "Abstract", coverUrl: "https://s3.amazonaws.com/CoverProject/album/album_no_doubt_its_my_life_bathwater.png", year: "2017")
    
    let album3 = Album.init(title: "Trap Muzik", artist: "T.I.", genre: "Rap/Blues", coverUrl: "https://s3.amazonaws.com/CoverProject/album/album_sting_nothing_like_the_sun.png", year: "2000")
    
    let album4 = Album.init(title: "Sunrise", artist: "Mama Water", genre: "Abstract", coverUrl: "https://s3.amazonaws.com/CoverProject/album/album_madonna_american_pie.png", year: "2018")
    
    albums = [album1, album2, album3, album4]
    
  }
  
  func getAlbums() -> [Album] {
    return albums
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    if (albums.count >= index) {
      albums.insert(album, at: index)
    } else {
      albums.append(album)
    }
  }
  
  func deleteAlbum(at index: Int) {
    albums.remove(at: index)
  }
  
}
