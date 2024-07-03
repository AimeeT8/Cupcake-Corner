//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Temple on 2024-05-28.
//

import SwiftUI

struct AddressView: View {
    
    //Give it the order class. Use Bindable because you aren't making the class instance here - in which case you would use @state. You're getting it from somewhere else so it needs @Bindable. The Order() Class uses the @Observable macro.
    @Bindable var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
                
            }
            
            Section {
                NavigationLink("Check out") {
                    CheckoutView(order: order)
                }
                    
                
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
