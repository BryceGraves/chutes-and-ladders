module ComponentsHelper
  # TODO: add tests for all this shiz

  # Main component call
  def component(name, *options, &block)
    render("components/#{name}", *options, &block)
  end

  # All components
  def alert(*options, &block)
    component(:alert, *options, &block)
  end

  def game_board(*options, &block)
    component(:game_board, *options, &block)
  end

  def game_list(*options, &block)
    component(:game_list, *options, &block)
  end

  def game_winner(*options, &block)
    component(:game_winner, *options, &block)
  end

  def global_header(*options, &block)
    component(:global_header, *options, &block)
  end

  def player_list(*options, &block)
    component(:player_list, *options, &block)
  end

  def scoreboard(*options, &block)
    component(:scoreboard, *options, &block)
  end

  # def popover(content, title: '', **options)
  #   {
  #     data: {
  #       toggle: :popover,
  #       content: content,
  #       title: title,
  #       **options,
  #     }
  #   }
  # end

  # def tooltip(title, **options)
  #   {
  #     title: title,
  #     data: {
  #       toggle: :tooltip,
  #       **options
  #     }
  #   }
  # end
end