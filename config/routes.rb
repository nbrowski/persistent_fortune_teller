Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  # VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
  get("/id/:the_id",              { :controller => "zodiacs", :action => "id" })
  get("/random/:num1/:num2",        { :controller => "fortunes", :action => "random" })

  get("/zodiacs/new", {:controller => "zodiacs", :action => "new_form"})
  get("/create_zodiac", {:controller => "zodiacs", :action => "create_row"})
end
