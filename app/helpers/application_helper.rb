module ApplicationHelper
  def page_title
    title = "Morning Glory"
    title = @page_title + " - " + title if @page_title
    title
  end

  def menu_link_to(text, path)
    link_to_unless_current(text, path) { content_tag(:span, text) }
  end
end

def today_with_wday
  wdays = %w(日 月 火 水 木 金 土)
  t = Time.current.advance(days: 2) #.advance(days: 2)は２日後を示す
  s = t.strftime("%Y年%-m月%-d日") #-は０を無くす
  case t.wday
  when 0
    s << "(<span style='color: red'>#{wdays[t.wday]}</span>)"
  when 6
    s << "(<span style='color: blue'>#{wdays[t.wday]}</span>)"
  else
    s << "(#{wdays[t.wday]})"
  end
  s.html_safe #エスケープを無効化
end
