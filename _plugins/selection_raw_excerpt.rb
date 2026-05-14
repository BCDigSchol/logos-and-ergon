module Jekyll
  class SelectionRawExcerptGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      return unless site.collections.key?('selections')
      site.collections['selections'].docs.each do |doc|
        doc.data['raw_excerpt'] = doc.content
      end
    end
  end
end
