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

 def random_results
  @maximum = params.fetch("user_max").to_f
  @minimum = params.fetch("user_min").to_f
  @result = rand(@minimum..@maximum)
  render({:template => "calculation_templates/random_results.html.erb"})
 end
 def blank_random_form
  render({:template => "calculation_templates/random_number.html.erb"})
 end
 def blank_square_root_form
  render({:template => "calculation_templates/square_root.html.erb"})
 end 
 
 def square_root_results
  @num = params.fetch("egg").to_f
  @square_root_of_num= @num **0.5

  render({:template =>"calculation_templates/square_root_results.html.erb"})
 end
end
