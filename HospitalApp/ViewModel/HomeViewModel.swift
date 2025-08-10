
import Foundation
import UIKit

class HomeViewModel {
    var networkManager: Network?
    var data: [CellModel] = []
//    var view: HomeView?
    

//    
//    func setImage() {
//        guard let url = URL(string: data.avatar) else { return }
//        view?.image.load(url: url)
//    }
    
    //поймать изображение и передать его во вью

        
        func fetchData() {
            if let myData = networkManager?.readJSONFromFile(fileName: "test") {
                data = myData
            }
        }
        
    }

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global(qos: .utility).async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
