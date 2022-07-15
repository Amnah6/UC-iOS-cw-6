//
//  ContentView.swift
//  day6
//
//  Created by Amnah Ali on 04/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    let Amnah = studentsDetails(fullName: "Amnah", year: 1999, age: 23)
    let Sarah = studentsDetails(fullName: "Sarah", year: 2000, age: 22)
    let Hoor = studentsDetails(fullName: "Hoor", year: 2002, age: 20)
    
    var arrayStudentsDetails = [
        studentsDetails(fullName: "Amnah", year: 1999, age: 23),
        studentsDetails(fullName: "Sarah", year: 2000, age: 22),
        studentsDetails(fullName: "Hoor", year: 2002, age: 20)
    ]
    
    var body: some View {
        VStack{
            Image("id")
            
            Text("سجل الطلبة")
            
            List(arrayStudentsDetails, id: \.self) { st in
                Text(s)
             }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct studentsDetails: Identifiable{
    
    let id = UUID()
    var fullName : String
    var year : Int
    var age : Int
    
    

}

  //List(studentsDetails, id: \.self) { studentsDetails in
 //        Text(studentsDetails)
//}
