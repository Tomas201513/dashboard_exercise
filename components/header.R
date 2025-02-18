###################
# header.R
# 
# Create the header for the ui.
###################
header <- dashboardHeader(title = "HSM Round 2 Dashboard",
                          titleWidth = 300,
                          dropdownMenu(type = "messages",
                                       messageItem(
                                         from = "Sales Dept",
                                         message = "Sales are steady this month."
                                       ),
                                       messageItem(
                                         from = "Admin",
                                         message = "Server load is 95%."
                                       )
                          ),
                          dropdownMenu(type = "notifications",
                                       notificationItem(
                                         text = "5 new users today",
                                         icon = icon("users")
                                       ),
                                       notificationItem(
                                         text = "12 new orders today",
                                         icon = icon("shopping-cart")
                                       )
                          )
                          
                          
                          )
