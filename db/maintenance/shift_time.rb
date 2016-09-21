CalendarItem.all.each do |i|
  i.start_time = i.start_time-1.hour
  i.end_time = i.end_time-1.hour
  i.save
end  
