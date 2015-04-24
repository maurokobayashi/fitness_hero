module DateHelper

  DATE='%d/%m/%Y'
  DATE_TIME='%d/%m/%Y %H:%M:%S'
  TIME='%H:%M:%S'

  def str_to_datetime(time, format=DATE_TIME)
    unless time.blank?
      Time.strptime(time, format)
    else
      nil
    end
  end

  def datetime_to_str(time, format=DATE_TIME)
    unless time.blank?
      time.strftime(format)
    else
      nil
    end
  end

  def str_to_date(time, format=DATE)
    unless time.blank?
      Time.strptime(time, format)
    else
      nil
    end
  end

  def date_to_str(time, format=DATE)
    unless time.blank?
      time.strftime(format)
    else
      nil
    end
  end

end