 require 'date'
 
  def format_date(timestamp)
    timestamp.strftime('%B %e, %Y')
  end

  def format_time(timestamp)
    timestamp.strftime('%I:%M %p')
  end



