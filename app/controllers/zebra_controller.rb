class ZebraController < ApplicationController
  def main
    render({ :template => "game_templates/square_new" })
  end

  def giraffe
    render({ :template => "game_templates/square_new" })
  end

  def elephant
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "game_templates/square_results" })
  end

  def lion
    render({ :template => "game_templates/square_root_new" })
  end

  def rabbit
    @the_num = params.fetch("users_number").to_f
    @the_result = Math.sqrt(@the_num)  
    render({ :template => "game_templates/square_root_results" })
  end

  def cat
    render({ :template => "game_templates/random_new" })
  end

  def dog
    @min = params.fetch("users_min").to_f
    @max = params.fetch("users_max").to_f
    @the_result = rand(@min..@max)  
    render({ :template => "game_templates/random_results" })
  end

  def frog
    render({ :template => "game_templates/payment_new" })
  end

  def tiger
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_f
    @principal = params.fetch("principal").to_f
    @the_result = (@apr/100/12 * @principal) / (1 - (1 + @apr/100/12) ** ((-12) * @years))  
    render({ :template => "game_templates/payment_results" })
  end
end
