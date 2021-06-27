class IDProcessor {
  // id for processing
  int weatherID;

  IDProcessor(this.weatherID);

  void pushPage() {
    if (weatherID < 700) {
      //push page for rainy weather
    } else if (weatherID == 800) {
      //push page for clear weather
    } else if (weatherID > 800) {
      //push page for cloudy weather
    }
  }
}
