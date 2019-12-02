module ApplicationHelper

  def hours_in_days
    (12..20).to_a
  end

  def minutes_in_shifts
    ["00", "15", "30", "45"]
  end

  def shifts
    shifts = []
    hours_in_days.each do |hour|
      ["00", "15", "30", "45"].each do |minute|
        hour_readable = hour.to_i < 10 ? "0#{hour}" : "#{hour}"
        shifts << "#{hour_readable}:#{minute}"
      end
    end
    shifts
  end
end
