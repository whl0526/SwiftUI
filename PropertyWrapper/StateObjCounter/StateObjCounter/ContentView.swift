
import SwiftUI

struct ContentView: View {
    @StateObject var counterStore: CounterStore = CounterStore()
    
    var body: some View {
        VStack {
            Group {
                Spacer()
                Text("StateObject 상위 뷰")
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
                Divider()
            }
            Spacer()
            Group {
                Text("StateObject 하위 뷰")
                StateCounterView()
            }
            Spacer()
            Group {
                Text("ObservedObject 하위 뷰")
                ObservedCounterView()
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
