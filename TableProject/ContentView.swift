//
//  ContentView.swift
//  TableProject
//
//  Created by Rodrigo Ramos on 1/09/22.
//

import SwiftUI

struct Pool {
    var id: Int
    let date, foodRecommended, foodType :String
}

struct ContentView: View {
    
    let pools: [Pool] = [
        Pool(id: 1, date: "15 Jun", foodRecommended: "50 kg", foodType: "Alim. Nicovita AB 35%"),
        Pool(id: 2, date: "14 Jun", foodRecommended: "40 kg", foodType: "Alim. Nicovita AB 20%"),
        Pool(id: 3, date: "01/12/2019", foodRecommended: "20 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%"),
        Pool(id: 4, date: "01/12/2020", foodRecommended: "10 kg", foodType: "Alim. Nicovita AB 10%")
    ]
    
    var body: some View {
        ScrollView ([.horizontal,.vertical], showsIndicators: false) {
            ParameterRowView()
            VStack {
                ForEach(pools, id: \.id){ pool in
                    BoxView(pool: pool)
                }
            }
        }
    }
}

struct BoxView: View {
    
    var pool: Pool
    
    var body: some View {
        HStack{
            Text(pool.date).titleStyle(foregroundColor: .black)
            Text(pool.foodRecommended).titleStyle(foregroundColor: .purple)
            Text(pool.foodType).titleStyle(foregroundColor: .black)
    
        }
    }
}

struct ParameterRowView: View {
    
    var body: some View {
        HStack{
            Text("Fecha").titleStyle(foregroundColor: .black)
            Text("Recomendación inteligente").titleStyle(foregroundColor: .purple)
            Text("Alimento real").titleStyle(foregroundColor: .black)
    
        }
    }
}

struct BaseStyle: ViewModifier {
    var foregroundColor : Color = .purple
    //var size: CGFloat = 18
    func body(content: Content) ->some View{
        content.foregroundColor(foregroundColor).accentColor(foregroundColor)
            .frame(width: 90, height: 60, alignment: .center).multilineTextAlignment(.center).lineLimit(3).minimumScaleFactor(0.2)
    }
}
extension View {
    func titleStyle(foregroundColor : Color ) -> some View {
        modifier(BaseStyle(foregroundColor: foregroundColor))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
