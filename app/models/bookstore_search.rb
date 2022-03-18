class BookstoreSearch < Blacklight::Rendering::AbstractStep
  # def render
  #   next_step(['boo!'])
  # end
  def render
    if config.bookstore_search
      next_step(values.map { |value| context.link_to(value, "https://bookshop.org/books?keywords=#{value}")  })
    else
      next_step(values)
    end
  end
end