class BuyPopupPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iegādājies papildu filtru")]')
    @button_buy = Element.new(:xpath, '//android.widget.TextView[contains(@text, "PIRKT")]')
    @button_cancel = Element.new(:xpath, '//android.widget.TextView[contains(@text, "ATCELT")]')
  end
  
  def visible?
    @title.visible?
    @button_buy.visible?
    @button_cancel.visible?
  end

  def close_pay_window
    @button_cancel.click
  end
end