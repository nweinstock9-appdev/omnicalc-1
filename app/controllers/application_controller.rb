class ApplicationController < ActionController::Base
  def square_the_number
    render({ :template => "formtemplates/user_square_number.html.erb"})
  end
  def square_results
    @input = params.fetch("number")
    @result = @input.to_f**2
    render({ :template => "formtemplates/user_square_results.html.erb"})
  end
end
