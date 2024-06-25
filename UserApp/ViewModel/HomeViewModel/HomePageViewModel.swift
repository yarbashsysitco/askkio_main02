import SwiftUI
import Combine

struct HomepageImageSlide {
    let image: String
}

class HomePageViewModel: ObservableObject {
    @Published var currentIndex = 0
    @Published var searchQuery = ""
    @Published var homepageSteps: [HomepageImageSlide] = [
        HomepageImageSlide(image: "Mainimg_1"),
        HomepageImageSlide(image: "Mainimg_2"),
        HomepageImageSlide(image: "Mainimg_3"),
    ]
    
    private var timer: AnyCancellable?
    
    init() {
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.publish(every: 3, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.nextSlide()
            }
    }
    
    func stopTimer() {
        timer?.cancel()
    }
    
    func nextSlide() {
        currentIndex = (currentIndex + 1) % homepageSteps.count
    }
}
