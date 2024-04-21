Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "main" })
  get("/square/new", { :controller => "zebra", :action => "giraffe" })
  get("/square/results", { :controller => "zebra", :action => "elephant" })
  get("/square_root/new", { :controller => "zebra", :action => "lion" })
  get("/square_root/results", { :controller => "zebra", :action => "rabbit" })
  get("/random/new", { :controller => "zebra", :action => "cat" })
  get("/random/results", { :controller => "zebra", :action => "dog" })
  get("/payment/new", { :controller => "zebra", :action => "frog" })
  get("/payment/results", { :controller => "zebra", :action => "tiger" })
end
