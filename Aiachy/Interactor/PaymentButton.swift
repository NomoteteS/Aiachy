//
//  PaymentButton.swift
//  Aiachy
//
//  Created by NomoteteS on 16.11.2022.
//

import SwiftUI
import PassKit

struct PaymentButton: View {
    
    var action : () -> Void
    
    var body: some View {
        Representable(action: action)
            .frame(width: 300, height: 50)
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton(action: {})
    }
}

extension PaymentButton {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    
    class Coordinator: NSObject, PKPaymentAuthorizationControllerDelegate {
        func paymentAuthorizationControllerDidFinish(_ controller: PKPaymentAuthorizationController) {
            
        }
        
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .buy, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void){
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
            
        }
        @objc
        func callback(_ sender: Any) {
            let controller = PKPaymentAuthorizationController()
            controller.delegate = self
//            present(controller, animated: true){
//                print("Complated")
//            }
        }
        
    }
    
}

private var paymentRequest : PKPaymentRequest = {
    let request = PKPaymentRequest()
    request.merchantIdentifier = ""
    request.supportedNetworks = [.masterCard,.visa]
//    request.supportedCountries = ["IN","US"]
    request.merchantCapabilities = .capability3DS
    
    request.paymentSummaryItems = [PKPaymentSummaryItem(label: "Zodiac", amount: 5)]
    
    return request
}()
