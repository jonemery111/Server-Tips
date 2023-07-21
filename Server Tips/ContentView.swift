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
    @State private var tipRatio = 0.145
    

    var body: some View {
        NavigationView {
            Form{
                Section {
                    TextField("$ sales", text: $salesText) {
                        
                    }
                    
                    
                }
                Section {
                    TextField("$ walking tips", text: $walkingTipsText) {
                        
                    }
                }
                HStack(alignment: .center) {
                    Spacer()
                    Button(
                        action: {
                            // did tap
                        },
                        label: { Text("Submit") }
                    )
                    Spacer()
                }
                Section{
                    HStack {
                        Spacer()
                        Text("Tip:Ratio  -")
                            .font(.headline)
                        Text("$ \(tipRatio)")
                        Spacer()
                    }
                }
                
            }
            .navigationTitle("Server Sales")
            .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                
                            } label: {
                                Image(systemName: "list.bullet")
                            }

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


    
