require 'nokogiri'

# Plugin to convert standard markdown images to featured image HTML structure
# Works at build time, no client-side JavaScript needed
Jekyll::Hooks.register :pages, :post_render do |page|
  # Only process project pages
  next unless page.path.start_with?('_projects/')

  # Parse the HTML with Nokogiri
  doc = Nokogiri::HTML(page.output)
  modified = false
  
  # Target the project-content area where the Markdown content is rendered
  content_area = doc.css('.project-content')
  if content_area.any?
    # Find all paragraphs containing only an image (markdown image syntax pattern)
    content_area.css('p > img:only-child').each do |img|
      p_tag = img.parent
      alt_text = img['alt']
      
      # Create new figure with appropriate class
      figure = Nokogiri::HTML::DocumentFragment.parse(
        "<figure class='about-featured-image'>
          <img src='#{img['src']}' alt='#{alt_text}'/>
          <figcaption>#{alt_text}</figcaption>
        </figure>"
      )
      
      # Replace paragraph with our new figure
      p_tag.replace(figure)
      modified = true
    end
    
    # Update the page output if modified
    if modified
      page.output = doc.to_html
    end
  end
end

# Also process documents (projects)
Jekyll::Hooks.register :documents, :post_render do |doc|
  # Only process project documents
  next unless doc.collection.label == 'projects'

  # Parse the HTML with Nokogiri
  html = Nokogiri::HTML(doc.output)
  modified = false
  
  # Target the project-content area where the Markdown content is rendered
  content_area = html.css('.project-content')
  if content_area.any?
    # Find all paragraphs containing only an image (markdown image syntax pattern)
    content_area.css('p > img:only-child').each do |img|
      p_tag = img.parent
      alt_text = img['alt']
      
      # Create new figure with appropriate class
      figure = Nokogiri::HTML::DocumentFragment.parse(
        "<figure class='about-featured-image'>
          <img src='#{img['src']}' alt='#{alt_text}'/>
          <figcaption>#{alt_text}</figcaption>
        </figure>"
      )
      
      # Replace paragraph with our new figure
      p_tag.replace(figure)
      modified = true
    end
    
    # Update the document output if modified
    if modified
      doc.output = html.to_html
    end
  end
end
