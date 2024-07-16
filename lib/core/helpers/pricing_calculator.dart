class PricingCalculator {

  /// Calculator Price based on tax and Shipping
  static double calculatorTotalPrice(double productPrice, String location) {
    double taxRate = getTaxForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  /// Calculator shipping cost
  static String calculatorShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculator tax
  static String calculatorTax(double productPrice, String location) {
    double taxRate = getTaxForLocation(location);
    double taxAmount = productPrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxForLocation(String location) {
    return .10;
  }

  static double getShippingCost(String location) {
    return 5.0;
  }
}