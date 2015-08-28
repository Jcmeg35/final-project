module RfpHelper

  def nice_date(date)
    if date.present?
      date.stamp('Jan 2, 2012')
    else
      "INVALID DATE"
    end
  end

end
