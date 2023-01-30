class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration*60
    @title = title
    @attendees = attendees
  end

  def postpone_24
    @start_date = @start_date + 60 * 60 * 24
  end

  def end_date
    @end_date = start_date + duration
  end

  def is_past?
    if start_date < Time.now
      return true
    else
      return false
    end
  end

  def is_futur?
    if start_date > Time.now
      return true
    else
      return false
    end
  end

  def is_soon?
    if start_date-Time.now <= 1800
      return true
    else
      return false
    end
  end

  def to_s
    puts ">Titre : "  + title
    puts ">Date de début : " + start_date.to_s
    puts ">Durée : " + (duration/60).to_s
    puts ">Les invités : #{attendees.to_s}"

  end

end



