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

  def page_search_filters
    @page_search_filters ||= SearchFiltersPage.new
    @page_search_filters
  end

  def page_filter_view
    @page_filter_view ||= FilterPage.new
    @page_filter_view
  end

  def page_delete_filter
    @page_delete_filter ||= DeleteFilterPage.new
    @page_delete_filter
  end

  def page_buy_filter
    @page_buy_filter ||= BuyMoreFilterPage.new
    @page_buy_filter
  end

  def page_menu_section
    @page_menu_section ||= MenuSectionPage.new
    @page_menu_section
  end

  def page_notification_view
    @page_notification_view ||= NotificationPage.new
    @page_notification_view
  end
end
