module FormHelper
  def setup_donut(donut)
    donut.donut_shop ||= DonutShop.new
    donut
  end
end
