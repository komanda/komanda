class OrdersMailer < ActionMailer::Base
  default from: "komandalife@gmail.com"
  
  def order_confirmation(user)
    @user = user
    
    mail(to: "#{user.name} <#{user.email}>", subject: "Komanda: Order Confirmaion")
  end
  
  def order_notification(user)
    @user = user
    
    mail(to: "komandalife@gmail.com", subject: "Komanda: NEW ORDER")
  end
end
