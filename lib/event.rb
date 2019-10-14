
class Event

  attr_accessor :start_date, :end_date, :duration, :title, :attendees 
  #attr_reader :is_past
  @@user_count = 0
  
  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @end_date = @start_date + duration * 60
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 24 * 60 * 60
  end

  def is_past?
    return (@start_date < Time.now)
  end

  def is_future?
    return !(@start_date < Time.now)
  end

  def is_soon?
    return (@start_date - Time.now < 30 * 60 )
  end

  def to_s
    return "Titre : #{@title}
Date de début : #{@start_date}
Durée : #{@duration}
Invités : " + @attendees.join(", ")
  end

end

