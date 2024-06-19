import SwiftUI

struct homepageImageSlide {
    let image: String
}

private let homepageSteps = [
    homepageImageSlide(image: "Mainimg_1"),
    homepageImageSlide(image: "Mainimg_2"),
    homepageImageSlide(image: "Mainimg_3"),
]

struct HomePage: View {
    @State private var currentIndex = 0
    @State var offset: CGFloat = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var Search: String = ""
    var body: some View {
        VStack(spacing: 0) {
//MARK: -location
            VStack {
                Rectangle()
                    .foregroundColor(.accentColor)
                    .overlay{
                            HStack{
                                Image("ic_location")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                Spacer()
                                    .frame(width: 5)
                                Text("Loading address")
                                    .foregroundColor(.white)
                                    .font(.custom("Poppins-Regular", size: 15))
                                Spacer()
                                    .frame(width: 8)
                                Button(action: {}, label: {
                                    Image("ic_arrow_down")
                                        .renderingMode(.template)
                                        .resizable()
                                        .frame(width: 18,height: 16)
                                        .foregroundColor(.white)
                                })
                                Spacer()
                            }
                            .padding(.leading,20)
                            .padding(.top,50)
                    }
            }
            .edgesIgnoringSafeArea(.top)
            .frame(width: UIScreen.main.bounds.width, height: 40)
            ScrollView(showsIndicators: false) {
//MARK: - swipe image
                VStack(spacing: 0){
                    VStack {
                        TabView(selection: $currentIndex) {
                            ForEach(0..<homepageSteps.count, id: \.self) { index in
                                Image(homepageSteps[index].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .tag(index)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(height: 200)
                        .onReceive(timer) { _ in
                            withAnimation {
                                currentIndex = (currentIndex + 1) % homepageSteps.count
                            }
                        }
                    }
                    HStack {
                        ForEach(0..<homepageSteps.count, id: \.self) { index in
                            Capsule()
                                .fill(currentIndex == index ? Color.accentColor : Color.white)
                                .frame(width: currentIndex == index ? 20 : 8, height: 8)
                                .animation(.easeInOut(duration: 0.2), value: currentIndex)
                        }
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(.black)
                            .opacity(0.2)
                            .frame(width: 65,height: 18)
                    )
                    .offset(y: -20)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.white)
                            .frame(height: 40)
                            .overlay(
                                HStack{
                                    Image("ic_search")
                                        .renderingMode(.template)
                                        .resizable()
                                        .foregroundColor(.accentColor)
                                        .frame(width: 25,height: 25)
                                    
                                    TextField("Search Service", text: $Search)
                                        .font(.custom("Poppins-Semibold", size: 18))
                                }
                                    .padding(.leading,10)
                            )
                    }
                    .padding([.leading,.trailing],20)
                    .offset(y: -200)
                    //MARK: - category tables
                    VStack{
                        HStack {
                            Capsule()
                                .foregroundColor(.accentColor)
                                .frame(width: 5,height: 20)
                            Text("Book a Service")
                                .font(.custom("Poppins-Semibold", size: 18))
                            Spacer()
                        }
                        .padding(.leading,20)
                    }
                    .offset(y: -30)
                    //MARK: - taxi service
                    Rectangle()
                        .clipShape(RoundedCorner(radius: 10, corners: [.topLeft,.bottomLeft]))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .frame(height: 150)
                        .padding(.leading,20)
                        .overlay(
                            HStack{
                                VStack(spacing: 0){
                                    Image("ic_taxi")
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                    Text("TAXI")
                                        .font(.custom("Poppins-Semibold", size: 16))
                                        .foregroundColor(.white)
                                }
                                .padding([.top,.bottom],20)
                                Spacer()
                            }
                                .padding(.leading,40)
                        )
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(TaxiList.indices, id: \.self) { index in
                                    ServiceCellUI(serviceDatas: TaxiList[index])
                                        .padding(.leading, index == 0 ? 140 : 0)
                                }
                            }
                        }
                        .padding(.top, -130)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    
                    Spacer()
                        .frame(height: 20)
                    //MARK: - delivery service
                    Rectangle()
                        .clipShape(RoundedCorner(radius: 10, corners: [.topLeft,.bottomLeft]))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .frame(height: 150)
                        .padding(.leading,20)
                        .overlay(
                            HStack{
                                VStack(spacing: 0){
                                    Image("ic_deliverytruck")
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                    Text("DELIVERY")
                                        .font(.custom("Poppins-Semibold", size: 16))
                                        .foregroundColor(.white)
                                }
                                .padding([.top,.bottom],20)
                                Spacer()
                            }
                                .padding(.leading,40)
                        )
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(DeliveryList.indices, id: \.self) { index in
                                    ServiceCellUI(serviceDatas: DeliveryList[index])
                                        .padding(.leading, index == 0 ? 140 : 0)
                                }
                            }
                        }
                        .padding(.top, -130)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    Spacer()
                        .frame(height: 20)
                    //MARK: - proservice
                    Rectangle()
                        .clipShape(RoundedCorner(radius: 10, corners: [.topLeft,.bottomLeft]))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .frame(height: 150)
                        .padding(.leading,20)
                        .overlay(
                            HStack{
                                VStack(spacing: 0){
                                    Image("ic_proservice")
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                    Text("PRO SERVICE")
                                        .font(.custom("Poppins-Semibold", size: 16))
                                        .foregroundColor(.white)
                                }
                    
                                .padding([.top,.bottom],20)
                                Spacer()
                            }
                                .padding(.leading,30)
                        )
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(ProServiceList.indices, id: \.self) { index in
                                    ServiceCellUI(serviceDatas: ProServiceList[index])
                                        .padding(.leading, index == 0 ? 140 : 0)
                                }
                            }
                        }
                        .padding(.top, -130)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    Spacer()
                        .frame(height: 20)
                    //MARK: - video consulting
                    Rectangle()
                        .clipShape(RoundedCorner(radius: 10, corners: [.topLeft,.bottomLeft]))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .frame(height: 160)
                        .padding(.leading,20)
                        .overlay(
                            HStack{
                                VStack(spacing: 0){
                                    Image("ic_videoconsulting")
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                    Text("VIDEO \nCONSULTING")
                                        .font(.custom("Poppins-Semibold", size: 16))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.white)
                                        .frame(width: 120,height: 50)
                                }
                                .padding([.top,.bottom],20)
                                Spacer()
                            }
                                .padding(.leading,20)
                        )
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(VideoConsultingList.indices, id: \.self) { index in
                                    ServiceCellUI(serviceDatas: VideoConsultingList[index])
                                        .padding(.leading, index == 0 ? 140 : 0)
                                }
                            }
                        }
                        .padding(.top, -130)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    Spacer()
                        .frame(height: 20)
                    //MARK: - Post task service
                    Rectangle()
                        .clipShape(RoundedCorner(radius: 10, corners: [.topLeft,.bottomLeft]))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .frame(height: 150)
                        .padding(.leading,20)
                        .overlay(
                            HStack{
                                VStack(spacing: 0){
                                    Image("ic_postTask")
                                        .resizable()
                                        .frame(width: 80,height: 80)
                                    Text("POST A TASK")
                                        .font(.custom("Poppins-Semibold", size: 16))
                                        .foregroundColor(.white)
                                    
                                }
                                .padding([.top,.bottom],20)
                                Spacer()
                            }
                                .padding(.leading,30)
                        )
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(PostTaskList.indices, id: \.self) { index in
                                    ServiceCellUI(serviceDatas: PostTaskList[index])
                                        .padding(.leading, index == 0 ? 140 : 0)
                                }
                            }
                        }
                        .padding(.top, -130)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    Spacer()
                        .frame(height: 20)
        //MARK: - do more with us
                    VStack{
                        HStack {
                            Capsule()
                                .foregroundColor(.accentColor)
                                .frame(width: 5,height: 23)
                            Text("Do More With Us")
                                .font(.custom("Poppins-Semibold", size: 18))
                            Spacer()
                        }
                        .padding(.leading,20)
                    }
//                    .offset(y: -590)
                    Spacer()
                        .frame(height: 30)
                    VStack{
                        Rectangle()
                            .foregroundColor(Color(red: 0.914, green: 0.992, blue: 1.0))
                            .overlay(
                                VStack {
                                    Image("ic_pickupimage")
                                        .resizable()
                                        .padding([.leading,.trailing,.top],10)
                                        .frame(height: 200)
                                    Spacer()
                                        .frame(height: 20)
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 0) {
                                            ForEach(MoreOptionsList.indices, id: \.self) { index in
                                                HomeMoreoptions(serviceDatas: MoreOptionsList[index])
                                                    .padding(.leading, index == 0 ? 10 : 0)
                                            }
                                        }
                                    }
                                    
                                    Button(action: {
                                        
                                    }, label: {
                                        RoundedRectangle(cornerRadius: 5)
                                            .foregroundColor(Color(red: 0.267, green: 0.663, blue: 0.719))
                                            .frame(height: 50)
                                            .shadow(radius: 5)
                                            .padding([.leading,.trailing],10)
                                            .overlay(
                                            Text("Use Genie for All your needs")
                                                .foregroundColor(.white)
                                                .font(.custom("Poppins-Semibold", size: 18))
                                            )
                                    })
                                    Spacer()
                                }
                             )
                            .frame(height: 430)
//                            .offset(y: -550)
            
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width)
        }
    }
    
    
    func getIndex()-> Int{
        let index = Int(round(Double(offset / getWidth())))
        
        return index
    }
}

extension View{
    
    func getWidth()->CGFloat{
        return UIScreen.main.bounds.width
    }
}
#Preview {
    HomePage()
}


