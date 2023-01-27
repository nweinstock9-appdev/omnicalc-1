class ApplicationController < ActionController::Base
  def square_the_number
    render({ :template => "formtemplates/user_square_number.html.erb"})
  end
  def square_results
    @input = params.fetch("number")
    @result = @input.to_f**2
    render({ :template => "formtemplates/user_square_results.html.erb"})
  end
  def user_sqrt_input
    render({ :template => "formtemplates/user_sqrt.html.erb"})
  end
  def user_sqrt_results
    @sqrt_input = params.fetch("sqrt_number")
    @sqrt_result = @sqrt_input.to_f**0.5
    render({ :template => "formtemplates/user_sqrt_results.html.erb"})
  end
end
