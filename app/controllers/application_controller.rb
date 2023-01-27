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
  def user_payment_results
    apr_percentage = (params.fetch("apr_input").to_f)/100
    n = (params.fetch("years_input").to_f)*12
    r = apr_percentage/12
    principal = (params.fetch("principal_input")).to_f
    num = (r*principal)
    denom = 1-((1+r)**(-1*n))
    payment = (num/denom)
    @apr_output = (params.fetch("apr_input")).to_f.to_s(:percentage, { :precision => 4})
    @n_output = (n/12).to_s
    @principal_output = principal.to_s(:currency)
    @payment_results = payment.to_s(:currency)
    render({ :template => "formtemplates/user_payment_results.html.erb"})
  end
  def user_payment_new
    render({ :template => "formtemplates/user_payment_new.html.erb"})
  end
end
