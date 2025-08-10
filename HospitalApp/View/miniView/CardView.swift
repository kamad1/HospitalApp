
import SwiftUI

struct CardView: View {
    var card: CellModel
    var body: some View {

        VStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Image(card.avatar)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        Spacer()
                    }
                    .padding(.trailing, 16)
                    
                    VStack(alignment: .leading) {
                        Text(card.scientific_degree_label)
                            .font(.caption)
                            .lineLimit(0)
                        Text("\(card.first_name) \(card.patronymic) \(card.last_name)")
                            .font(.headline)
                            .fontWeight(.bold)
                            .lineLimit(0)
                            .padding(.bottom, 8)
                        
                        Image(card.imgStart.randomElement()!)
                            .padding(.bottom, 8)
                        
                        Text("стаж \(card.seniority)")
                            .foregroundStyle(Color.gray)
                            .padding(.bottom, 8)
                        
                        Text("от \(card.text_chat_price) ₽")
                    }
                    .frame(maxWidth: .infinity)
                    //                    .background(Color.gray.opacity(0.1))
                    .padding(.trailing, 16)
                    
                    VStack(alignment: .trailing) {
                        Image(systemName: "heart")
                        Spacer()
                    }
                    
                    
                }
                NavigationLink {
                    PreviewCard(card: card)
                        .navigationBarTitle("Педиатр")
                } label: {
                    Text(card.isFree ? "Записаться" :"Нет свободного расписания")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(card.isFree ? .bgBtn : .gray)
                        .cornerRadius(8)
                }
                
                //                Button {
                //
                //
                //                } label: {
                //                    Text("Записаться")
                //                        .font(.headline)
                //                        .fontWeight(.bold)
                //                        .foregroundColor(.white)
                //                        .frame(maxWidth: .infinity)
                //                        .frame(height: 48)
                //                        .background(card.isFree ? .bgBtn : .gray)
                //                        .cornerRadius(8)
                //                }
                
            }
            .padding(.horizontal, 16)
            .padding(.top, 20)
            .padding(.bottom, 16)
            
        }.frame(maxWidth: UIScreen.main.bounds.width - 32)
            .frame(height: 224)
            .background(.white)
            .cornerRadius(8)
            .shadow(radius: 1)
        
        
    }
}

//#Preview {
//    CardView(card: .init(image: "img1", professional: "Frontend adfbj", fullName: "John Doe", years: "5", imgStart: "star", price: "1200", isFree: true))
//}
