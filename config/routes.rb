Rails.application.routes.draw do
  get("/square/results", { :controller => "application", :action => "square_results"})
  get("/square/new", { :controller => "application", :action => "square_the_number"})
end
