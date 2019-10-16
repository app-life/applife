module ApplicationHelper
    def markdown(text)
        options = {
          autolink: true,
          space_after_headers: true,
          no_intra_emphasis: true,
          fenced_code_blocks: true,
          tables: true,
          hard_wrap: true,
          xhtml: true,
          lax_html_blocks: true,
          strikethrough: true
        }
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
        markdown.render(text)
      end
end
