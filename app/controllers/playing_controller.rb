require "longest_word.rb"

class PlayingController < ApplicationController
  def game
    @grid = generate_grid(21).join(" | ")

  end

  def score
    @answer = params[:answer]
    start_time = params[:start_time].to_i
    grid = params[:grid].split(" | ")
    end_time = Time.now.to_i
    @results = run_game(@answer, grid, start_time, end_time)
  end
end
