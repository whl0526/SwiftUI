
import SwiftUI

struct StateCounterView: View {
//    @State var count: Int = 0
    
    // StateObject는 이 View의 상위뷰(SuperView)의 상태가 변경되어 다시 그려져야할 때에도, subview안에 계속 살아남아서 활용된다
    // 따라서 CounterStore() 초기화는 딱 한번만 실행될 뿐이다
    @StateObject var counterStore: CounterStore = CounterStore()
    
    var body: some View {
        VStack {
            Text("\(counterStore.count)")
                .font(.largeTitle)
            
            HStack {
                Spacer()
                
                Button {
                    counterStore.reset()
                } label: {
                    Text("초기화")
                        .font(.largeTitle)
                }
                
                Spacer()
                
                Button {
                    counterStore.plusOne()
                } label: {
                    Text("+ \(1)")
                        .font(.largeTitle)
                }
                
                Spacer()
            }
        }
    }
}

struct StateCounterView_Previews: PreviewProvider {
    static var previews: some View {
        StateCounterView()
    }
}
