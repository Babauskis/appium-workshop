class Pages
  def page_intro
    @page_intro ||= IntroPage.new
    @page_intro
  end

  def page_create_filter
    @page_create_filter ||= CreateFilterPage.new
    @page_create_filter
  end

  def page_sub_category
    @page_sub_category ||= SubCategoryPage.new
    @page_sub_category
  end

  def page_paremeters
    @page_paremeters ||= ParametersPage.new
    @page_paremeters
  end

  def page_menu_section
    @page_menu_section ||= MenuSectionPage.new
    @page_menu_section
  end  

  def page_buy_filter
    @page_buy_filter ||= BuyFilterPage.new
    @page_buy_filter
  end

  def page_settings
    @page_settings ||= SettingsPage.new
    @page_settings
  end
end