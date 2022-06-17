    //
    //  MyInvoicScreen.swift
    //  Wathiqha
    //
    //  Created by Khaled Kutbi on 26/07/1443 AH.
    //
    
    import SwiftUI
    
    
    
    struct MyInvoicScreen: View {
        //    @StateObject
    
        @ObservedObject var viewModel = MyInvoicesViewModel()

        let title = NSLocalizedString("myInvoices", comment: "")
        var body: some View {
            NavigationView {
                List {
                    ForEach(viewModel.invoices) { invoice in
                        InvoiceCard(invoice: invoice)
                    }
                }.listStyle(SidebarListStyle())
                .navigationTitle(title)
            }
            // without this style modification we get all sorts of UIKit warnings
            .navigationViewStyle(StackNavigationViewStyle())
            
        }
    }
    
    struct MyInvoicScreen_Previews: PreviewProvider {
    
        static var previews: some View {
            MyInvoicScreen( )
        }
    }
    
    struct InvoiceCard:View {
        var invoice:Invoice
        init(invoice:Invoice){
            self.invoice = invoice
        }

        var body: some View{
            VStack{
                HStack {
                    Image(invoice.orgnization.profileImageUrl).resizable().frame(width:60, height:60).cornerRadius(10)
                    VStack{
                        Text(invoice.orgnization.name).fontWeight(.bold).font(.system(size: 14))
                        Text(String(invoice.total)).foregroundColor(.red)
                    }
                }.padding(.vertical,10).padding(.horizontal,10)
            }.frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            ).background(Color.white).cornerRadius(15).listRowInsets(.init(top: 10, leading: 0, bottom: 0, trailing: 0))
        }
    }
    
    
