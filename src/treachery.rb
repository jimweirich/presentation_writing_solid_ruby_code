class Example
  def display_status
    case mode
    when "OFF"
      (code == "V1") ? :off :
      (code == "V2" || code == "V3" || code == "V4") ? :off :
      :invalid
    when "ON"
      (code == "V5" || code == "V7" || code == "V8" || code == "V1") ? :on :
      (code == "V9" || code == "V10" || code == "V11") ? :running :
      :invalid
    when "STANDBY"
      (code == "V5" || code == "V7" || code == "V8" || code == "V1") ? :standby :
      (code == "V9" || code == "V10" || code == "V12") ? :idle :
      :invalid
    else
      :invalid
    end
  end
end
