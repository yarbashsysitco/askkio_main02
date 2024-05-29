import SwiftUI

struct OnBoardingStep {
    let image: String
    let title: String
    let description: String
}

private let OnBoardingSteps = [
    OnBoardingStep(image: "Screen_1", title: "Enable Smart login.It's quick \n& secure", description: "You can log into the app the same way you unlock your device"),
    OnBoardingStep(image: "Screen_2", title: "Book Taxi", description: "You can log into the app the same way you unlock your device"),
    OnBoardingStep(image: "Screen_3", title: "Package Delivery", description: "You can log into the app the same way you unlock your device"),
    OnBoardingStep(image: "Screen_4", title: "Package Delivery", description: "You can log into the app the same way you unlock your device"),
    OnBoardingStep(image: "Screen_5", title: "Package Delivery", description: "You can log into the app the same way you unlock your device"),
    OnBoardingStep(image: "Screen_6", title: "Package Delivery", description: "You can log into the app the same way you unlock your device")
    
]
struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct OnBoardingUI: View {
    @State private var currentStep = 0
    
    var body: some View {
        NavigationView {
            VStack {
                ImageView(currentStep: $currentStep)
                Spacer()
                ViewText(currentStep: $currentStep)
                Spacer()
                
                HStack {
                    BackButtonView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    OnBoardingUI()
}

struct BackButtonView: View {
    var body: some View {
        HStack {
            Spacer()
            NavigationLink(destination: NumberRegistration()) {
                Image("nextBarButton")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .background(
                        Circle()
                            .fill(Color.cyan)
                            .stroke(Color.cyan, lineWidth: 2.0)
                            .shadow(radius: 5)
                            .frame(width: 60, height: 60)
                    )
            }
        }
        .padding([.trailing], 50)
        .padding([.bottom], 30)
    }
}

struct ImageView: View {
    @Binding var currentStep: Int
    var body: some View {
        ZStack {
            Spacer()
            VStack(spacing: 0) {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image("ic_pf_noti")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    })
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image("ic_pf_noti")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                        })
                    }
                }
                .padding()
                .offset(y: 30)
                TabView(selection: $currentStep) {
                    ForEach(0..<OnBoardingSteps.count) { it in
                        VStack {
                            Image(OnBoardingSteps[it].image)
                                .resizable()
                                .frame(width: 350, height: 250)
                        }
                        .tag(it)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 700)
        .background(Color(red: 0.835, green: 0.937, blue: 0.947))
        .clipShape(RoundedCorner(radius: 20, corners: [.bottomLeft]))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ViewText: View {
    @Binding var currentStep: Int
    
    var body: some View {
        Spacer()
        ZStack {
            VStack {
                TabView(selection: $currentStep) {
                    ForEach(0..<OnBoardingSteps.count) { it in
                        VStack {
                            Text(OnBoardingSteps[it].title)
                                .bold()
                                .foregroundColor(.blue)
                                .font(.system(size: 25, weight: .bold))
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 16)
                            
                            Text(OnBoardingSteps[it].description)
                                .padding(10)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                        .tag(it)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 350)
        .clipShape(RoundedCorner(radius: 20, corners: [.topRight]))
        .edgesIgnoringSafeArea(.bottom)
    }
}
