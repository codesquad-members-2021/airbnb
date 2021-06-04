//
//  RoomViewModel.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit

class RoomViewModel {
    
    private(set) var room: Room!
    
}

extension RoomViewModel {
    
    func setRoomInfo(with room: Room) {
        self.room = room
    }
    
    func getDetailImages(handler: @escaping ([UIImage]) ->()) {
        
        let images = room.images.detailImage
        
        DispatchQueue.main.async {
            let detailImages = images.map { (imageString) -> UIImage in
            guard let url = URL(string: imageString) else { return UIImage() }
                let data = try? Data(contentsOf: url)
                return UIImage(data: data!) ?? UIImage()
            }
            handler(detailImages)
        }
    }
    
}
