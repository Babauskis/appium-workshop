require 'date'
module Filters
  def Filters.transports
    @transports ||= Filter.new(
        cat: 'Transports',
        sub_cats: ["Vieglie auto", "Audi", "Audi A1", "Visi"],
        params: [Hash['name' => 'GADS', 'left' => '1999', 'right' => '2002']]
    )
    @transports
  end
  def Filters.nekustamie
    @nekustamie ||= Filter.new(
      cat: 'Nekustamie īpašumi',
      sub_cats: ["Dzīvokļi", "Rīga", "Centrs", "Visi"],
      params: [Hash['name' => 'Istabas', 'left' => '2', 'right' => '3']]
  )
    @nekustamie
  end
  def Filters.vakances
    @vakances ||= Filter.new(
      cat: 'Vakances',
      sub_cats: ["Administrātors"],
  )
    @vakances
  end
end

class Filter
  attr_reader :name, :cat, :sub_cats, :params
  def initialize(name: '', cat: '', sub_cats: [], params: [])
    if name == ''
      @name = 'UIAuto' + DateTime.now.strftime('%Q')
    else
      @name = name
    end
    @cat = cat
    @sub_cats = sub_cats
    @params = params
  end
end