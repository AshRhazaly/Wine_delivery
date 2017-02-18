class @NotifyWidget
  constructor: ->
    @order_quantity = $('.order-quantity')
    @order_confirm = $('.wine-order')
    @order_address = $('.order-address')
    @order_cust_name = $('.cust-name')
    @order_email = $('.email')
    @order_price = $('.wine-price')
    # @order_quantity_id = $('#order_quantity')
    # @order_address_id = $('#order_address')
    # @order_email_id = $('#order_email')
    # @order_cust_name_id = $('#order_cust_name')
    this.order_notify()
    # this.order_verify()

  order_notify: =>
    @order_confirm.on 'click', =>
      if @order_quantity.val() == "" or @order_address.val() == "" or @order_cust_name.val() == "" or @order_email.val() == ""
        # alert 'hello world'
      else
        amount_ordered = @order_quantity.val()
        cust_address = @order_address.val()
        wine_price = @order_price.val()
        total_amount = amount_ordered * wine_price
        alert('You have ordered '+amount_ordered+' wines. It
        will delievered to you at '+ cust_address + " and it'll cost you $" + total_amount.toFixed(2))

  # order_verify: =>
  #   @order_quantity.on 'focusout', =>
  #     if @order_quantity.val() == ""
  #       $("<div class=field_with_errors><span>Qty needs a value</span></div>").insertAfter(@order_quantity_id)
  #
  #   @order_address.on 'focusout', =>
  #     if @order_address.val() == ""
  #       $("<div class=field_with_errors><span>Address cannot be blank</span></div>").insertAfter(@order_address_id)
  #
  #   @order_cust_name.on 'focusout', =>
  #     if @order_cust_name.val() == ""
  #       $("<div class=field_with_errors><span>Name cannot be blank</span></div>").insertAfter(@order_cust_name_id)
  #
  #   @order_email.on 'focusout', =>
  #     if @order_email.val() == ""
  #       $("<div class=field_with_errors><span>Email cannot be blank</span></div>").insertAfter(@order_email_id)

$(document).on 'turbolinks:load', ->
  converter = new NotifyWidget
