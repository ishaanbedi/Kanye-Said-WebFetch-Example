import SwiftUI
import WebFetch

struct ContentView: View {
    @State private var quote: String?
    @State private var disableButton = true
    
    var body: some View {
        VStack {
            Spacer()
            if let quote = quote {
                VStack {
                    Text("Kanye once said:")
                    Text("*\(quote)*.")
                        .font(.title2)
                        .padding(.vertical)
                }
            } else {
                Text("Loading...")
            }
            Spacer()
            Button(action: generateAnotherQuote) {
                Text("Another One")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(disableButton)
            .opacity(disableButton ? 0.1 : 1.0)
            .padding(.all)
        }
        .onAppear {
            generateAnotherQuote()
        }
    }
    
    func generateAnotherQuote() {
        WebFetch().fetch(url: "https://api.kanye.rest/") { result in
            switch result {
            case .success(let json):
                if let jsonObject = json as? [String: Any], let quote = jsonObject["quote"] as? String {
                    DispatchQueue.main.async {
                        self.quote = quote
                    }
                    disableButton = false
                }
            case .failure(let error):
                print("Error fetching: \(error.localizedDescription)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
