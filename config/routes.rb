Rails.application.routes.draw do
  get("/square/results", { :controller => "application", :action => "square_results"})
  get("/square/new", { :controller => "application", :action => "square_the_number"})
  get("/square_root/results", { :controller => "application", :action => "user_sqrt_results"})
  get("/square_root/new", { :controller => "application", :action => "user_sqrt_input"})
  get("/payment/results", { :controller => "application", :action => "user_payment_results"})
  get("/payment/new", { :controller => "application", :action => "user_payment_new"})
end
