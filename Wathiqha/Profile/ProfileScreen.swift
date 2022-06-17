    //
    //  ProfileScreen.swift
    //  Wathiqha
    //
    //  Created by Khaled Kutbi on 15/08/1443 AH.
    //

    import SwiftUI

    struct ProfileScreen: View {
        
        @ObservedObject var viewModel = ProfileViewModel()
        @State private var showingOptions = false

    var body: some View {
        let user = viewModel.user

        NavigationView{
            List {
                if let user  = user {
                Section(header: Text("PersonalInformation".tr())) {
                    InfoRow(title: "fullName".tr(), value: user.firstName + user.lastName)
                    InfoRow(title: "birthDay".tr(), value:user.birthDay ?? "")
                    InfoRow(title: "gender".tr(),
                                    value:(user.gender)! ? "male":"female")
                    InfoRow(title: "jobTitle".tr(), value:user.jobTitle ?? "")
                    InfoRow(title: "phoneNumber".tr(), value: user.phoneNumber)
                    InfoRow(title: "email".tr(), value: user.emailAddres ?? "")
                }
                }
                Section(header: Text("about".tr())) {
                    ClikableRow(title: "termsAndCondations".tr(), action: viewModel.presentTermsAndCondations
                    )
                    ClikableRow(title: "privacyPolicy".tr(), action: viewModel.presentPrivacyPolicy
                )
                    InfoRow(title: "version".tr(), value:"1.0.0")

                }
                  
                Section(header: Text("settings".tr())) {
                    ClikableRow(title: "lang".tr(),value: Locale.current.languageCode?.tr(), action: {
                        showingOptions = true
                    })
                    .actionSheet(isPresented: $showingOptions, content: {
                        ActionSheet(title: Text("selectLanguage".tr()),
                                    buttons: [
                                        .default(Text("ar".tr())) {
                                            viewModel.changeToArabic()
                                        },
                                        .default(Text("en".tr())) {
                                            viewModel.changeToEnglish()
                                        },
                                    ]
                        )

                    })

                }
                


            }.navigationTitle("profile".tr()).listStyle(SidebarListStyle())

            
        }
    }
    }

    struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
    }


    struct InfoRow :View{
        var title:String
        var value:String

        init(title:String ,value:String) {
            self.title = title
            self.value = value
        }

        var body: some View {
            
            HStack{
                Text(self.title)
                Spacer()
                Text(self.value)
            }
        }

    }
    
   
    struct ClikableRow: View{
        var title:String
       @State var value:String?
        var action: (()->Void)


        init(title:String ,value:String? = nil,action: @escaping (()->Void)) {
            self.title = title
            self.value = value
            self.action = action
        }

        var body: some View {
            Button(action:action) {
                HStack{
                    Text(title)
                    Spacer()
                    if let value = self.value {
                               Text(value)
                           }
                }
            
            }
        }
    }



    extension String {
        func tr() -> String {
            return NSLocalizedString(self, comment: "")
        }
    }
