library dating;

extension Dating on DateTime{
  ///Returns true if this date is  within the specified range
  bool isInRange({
    required DateTime from, 
    required DateTime to,
    ///Removes time from date to get matches if the date is the same but time is not
    bool onlyCheckDate = false,
  }){
    DateTime dateToCheck = this;
    if(onlyCheckDate){
      //Remove time from
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      //Remove time from the date to check
      dateToCheck = DateTime(dateToCheck.year,dateToCheck.month,dateToCheck.day);
    }
    if(dateToCheck.isAtSameMomentAs(from)){
      //Return true if it is equal to from
      return true;
    }else if(dateToCheck.isAtSameMomentAs(to)){
      //Return true if it is equal to to
      return true;
    }else if(dateToCheck.isAfter(from) && dateToCheck.isBefore(to)){
      //Return true if it is within range
      return true;
    }else{
      //Return false if this is outside the specified range
      return false;
    }
  }
}