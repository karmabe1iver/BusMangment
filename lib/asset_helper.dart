abstract class AssetHelper {
  static String images(String imagename) {
    return 'asset/images/$imagename';
  }

//---------------------------------------------

  static get titleCard => images('moovbe.png');

  static get Wbus => images('white_bus.png');

  static get Ybus => images('yellow_bus.png');

  static get titleIcon => images('Polygon.png');

  static get driverDp => images('driver_dp.png');

  static get redPolygon => images('PolygonRed.png');

  static get union => images('Union.png');

  static get unionBlck => images('Unionblck.png');

  static get rectanle => images('Rectangle.png');

  static get rectanleBlck => images('Rectangleblck.png');

  static get DProfilepic => images('Ellipse.png');
}
