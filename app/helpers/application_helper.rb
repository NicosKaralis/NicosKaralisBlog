module ApplicationHelper
  
  def title
    base = "NicosKaralis"
    if @title.nil?
      base
    else
      "#{@title} | #{base}"
    end
  end
  
  def markdown(text)  
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    html = Redcarpet.new( text, *options).to_html
    coderay(html).html_safe
  end

  def coderay(text)
    text.gsub(/\<pre( lang="(.+?)")?\>\<code\>(.+?)\<\/code\>\<\/pre\>/m) do
      CodeRay.scan($3, $2).div(:css => :class)
    end
  end
  
end
