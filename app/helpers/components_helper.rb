module ComponentsHelper
  def alert(*options, &block)
    component(:alert, *options, &block)
  end

  def component(name, *options, &block)
    render("components/#{name}", *options, &block)
  end

  def popover(content, title: '', **options)
    {
      data: {
        toggle: :popover,
        content: content,
        title: title,
        **options,
      }
    }
  end

  def tooltip(title, **options)
    {
      title: title,
      data: {
        toggle: :tooltip,
        **options
      }
    }
  end
end