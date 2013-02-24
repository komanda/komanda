class OrdersMailer < ActionMailer::Base
  default from: "komandalife@gmail.com"
  
  def order_confirmation(user, order, product)
    @user = user
    @order = order
    if product.class.to_s == "Event"
      @event = product
    else
      @product = product
    end
    mail(to: "#{user.name} <#{user.email}>", subject: "Komanda: Order Confirmaion")
    # mail(to: "komandalife@gmail.com", subject: "New order: #{user.name} <#{user.email}>")
  end
  
  def notify(user, order, product)
    @user = user
    @order = order
    @product = product
    
    mail(to: "komandalife@gmail.com", subject: "Komanda: NEW ORDER")
  end
end
