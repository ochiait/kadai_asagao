t = Time.current
0.upto(9) do |d|
  CalendarItem.create(
    title: "セミナー第#{d+1}回",
    start_time: t.advance(days: d,hours: d),
    end_time: t.advance(days: d,hours: d + 2),
    all_day: false,
    description: "シードデータ#{d+1}個目",
    location: "芝#{d+1}丁目"
  )
end
