
import SwiftUI

struct PreviewCard: View {
    var card: CellModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image(card.avatar)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .padding(.trailing, 16)
                

                    Text("\(card.first_name) \(card.patronymic) \(card.last_name)")
                    .font(.headline)
                        .foregroundColor(.black)
                    Spacer()

            }
            .padding(.bottom, 20)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "stopwatch")
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 1)
                    Text("Опыт работы \(card.seniority) год(лет)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack {
                    Image(systemName: "heart.text.square")
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 1)
                    Text("\(card.scientific_degree_label)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack {
                    Image(systemName: "graduationcap")
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 1)
                    Text("\(String(describing: card.higher_education?.first?.university))" ?? "1-й ММИ им. И.М.Сеченова")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack {
                    Image(systemName: "globe.americas")
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 1)
                    Text("Детская клиника “РебёнОК")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.bottom, 20)
            
            HStack {
                NavigationLink{
                    PriceView(card: card)
                        .navigationTitle("Стоимость услуг")
                } label: {
                    Text("Стоимость услуг")
                        .font(.headline)
                        .padding(.leading, 16)
                        .foregroundColor(.black)
                        
                    Spacer()
                    Text("от \(card.hospital_price)")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.trailing, 16)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 1)
                }
        
            
            
            
            Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
            .padding(.top, 20)
            
            Spacer()
                
            
            NavigationLink {
                //
            } label: {
                Text("Записаться")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(.bgBtn)
                    .cornerRadius(8)
            }
            .padding(.bottom, 10)

            
        }
        .frame(width: UIScreen.main.bounds.width - 32)
        .frame(maxHeight: .infinity)
        .background(.bgApp)

        
    }
        
}
