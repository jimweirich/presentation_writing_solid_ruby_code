def memcpy(to, from, size)


  i = 0
  while i < size
    to[i] = from[i]
    i += 1
  end
end

void *memcpy(void *pvTo, void *pvFrom, size_t size)
{
    byte * pbTo = (byte *)pvTo;
    byte * pbFrom = (byte *)pvFrom;

    ASSERT(pvTo != NULL && pvFrom != NULL);
    ASSERT(pbTo >= pbFrom+size || pbFrom >= pbTo+size);

    while (size-- > 0)
        *pbTo++ = *pbFrom++;

    return (pvTo);
}


  def show
    @stuff = Stuff.find(params[:id])
  end



  def logical_system_status
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
