class ApplicationController < ActionController::Base
 def blank_square_form
   render({:template=>"calculation_templates/square_form.html.erb"})
  end

 def calculate_square
     #params={"dog"=>"42"}

 @num = params.fetch("dog").to_f
 @square_of_num= @num ** 2
   render({:template=>"calculation_templates/square_results.html.erb"})
 end

 def calculate_random
  @upper = params.fetch("user_max").to_f
  @lower = params.fetch("user_min").to_f
  @result = rand(@lower..@upper)
  render({:template => "calculation_templates/random_results.html.erb"})
 end
 def blank_random_form
  render({:template => "calculation_templates/random_number.html.erb"})
 end
end
