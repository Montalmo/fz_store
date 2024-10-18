class FZPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxrateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCoast = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCoast;
    return totalPrice;
  }

  static String calculateShippingCoast(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxrateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxrateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String loaction) {
    return 5.00;
  }

  // static double calculateCartTolal(CartModel cart) {
  //   return cart.items.map((element) => element.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
