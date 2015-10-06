module ApplicationHelper
  def prettify(number)
    number.to_i == number ? number.to_i : number
  end
end
