
import Foundation

// final은 class가 더 상속될 수 없는 것으로 제약하는 키워드
// 이 클래스는 상속 불가
final class CounterStore: ObservableObject {
    @Published var count = 0
    
    func reset() {
        count = 0
    }
    
    func plusOne() {
        count += 1
    }
    
    
}
