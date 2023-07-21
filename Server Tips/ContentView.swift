//
//  ContentView.swift
//  Server Tips
//
//  Created by Jon Emery on 7/20/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var salesText = ""
    @State private var walkingTipsText = ""
    

    var body: some View {
        NavigationView {
            Form{
                Section {
                    TextField("sales", text: $salesText) {
                        
                    }
                    
                    
                }
                Section {
                    TextField("walking tips", text: $walkingTipsText) {
                        
                    }
                }
                HStack(alignment: .center) {
                    
                    Button(
                        action: {
                            // did tap
                        },
                        label: { Text("Submit") }
                    )
                    
                }
            }
            
        }
    }






    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
