class OrderNotifier < ActionMailer::Base
  default from: "Marco A <mcortes_oso@yahoo.com.mx>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order
      mail to: order.email, subject: 'Pedido confirmado de BEE Shop'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pedido enviado por BEE Shop'
  end
end
