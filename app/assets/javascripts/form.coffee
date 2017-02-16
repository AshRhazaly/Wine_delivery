class @NotifyWidget
  constructor: ->
    @order_quantity = $('.order-quantity')
    @order_confirm = $('.wine-order')
    @order_address = $('.order-address')
    this.order_notify()

  order_notify: =>
    @order_confirm.on 'click', =>
      amount_ordered = @order_quantity.val()
      cust_address = @order_address.val()
      alert('You have ordered '+amount_ordered+' wines
      and will delievered to you at '+ cust_address)

$(document).on 'turbolinks:load', ->
  converter = new NotifyWidget
