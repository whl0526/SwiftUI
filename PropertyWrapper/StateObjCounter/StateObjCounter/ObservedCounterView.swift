import SwiftUI

struct ObservedCounterView: View {
    // ObservedObject는 이 View의 상위뷰(SuperView)의 상태가 변경되어 다시 그려져야할 때마다, subview안에 다시 만들어진다
    // 따라서 CounterStore() 초기화는 상위뷰가 다시 그려질때마다 실행된다
    @ObservedObject var counterStore: CounterStore = CounterStore()
    
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

struct ObservedCounterView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedCounterView()
    }
}
