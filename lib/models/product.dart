// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));
String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.product,
  });

  Product product;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    product: Product.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "product": product.toJson(),
  };
}

class Product {
  Product({
    this.id,
    this.idManufacturer,
    this.idSupplier,
    this.idCategoryDefault,
    this.productNew,
    this.cacheDefaultAttribute,
    this.idDefaultImage,
    this.idDefaultCombination,
    this.idTaxRulesGroup,
    this.positionInCategory,
    this.manufacturerName,
    this.quantity,
    this.type,
    this.idShopDefault,
    this.reference,
    this.supplierReference,
    this.location,
    this.width,
    this.height,
    this.depth,
    this.weight,
    this.quantityDiscount,
    this.ean13,
    this.isbn,
    this.upc,
    this.cacheIsPack,
    this.cacheHasAttachments,
    this.isVirtual,
    this.state,
    this.additionalDeliveryTimes,
    this.deliveryInStock,
    this.deliveryOutStock,
    this.onSale,
    this.onlineOnly,
    this.ecotax,
    this.minimalQuantity,
    this.lowStockThreshold,
    this.lowStockAlert,
    this.price,
    this.wholesalePrice,
    this.unity,
    this.unitPriceRatio,
    this.additionalShippingCost,
    this.customizable,
    this.textFields,
    this.uploadableFiles,
    this.active,
    this.redirectType,
    this.idTypeRedirected,
    this.availableForOrder,
    this.availableDate,
    this.showCondition,
    this.condition,
    this.showPrice,
    this.indexed,
    this.visibility,
    this.advancedStockManagement,
    this.dateAdd,
    this.dateUpd,
    this.packStockType,
    this.metaDescription,
    this.metaKeywords,
    this.metaTitle,
    this.linkRewrite,
    this.name,
    this.description,
    this.descriptionShort,
    this.availableNow,
    this.availableLater,
    this.associations,
  });

  int id;
  String idManufacturer;
  String idSupplier;
  String idCategoryDefault;
  dynamic productNew;
  String cacheDefaultAttribute;
  String idDefaultImage;
  String idDefaultCombination;
  String idTaxRulesGroup;
  String positionInCategory;
  String manufacturerName;
  String quantity;
  String type;
  String idShopDefault;
  String reference;
  String supplierReference;
  String location;
  String width;
  String height;
  String depth;
  String weight;
  String quantityDiscount;
  String ean13;
  String isbn;
  String upc;
  String cacheIsPack;
  String cacheHasAttachments;
  String isVirtual;
  String state;
  String additionalDeliveryTimes;
  List<AvailableLater> deliveryInStock;
  List<AvailableLater> deliveryOutStock;
  String onSale;
  String onlineOnly;
  String ecotax;
  String minimalQuantity;
  dynamic lowStockThreshold;
  String lowStockAlert;
  String price;
  String wholesalePrice;
  String unity;
  String unitPriceRatio;
  String additionalShippingCost;
  String customizable;
  String textFields;
  String uploadableFiles;
  String active;
  String redirectType;
  String idTypeRedirected;
  String availableForOrder;
  String availableDate;
  String showCondition;
  String condition;
  String showPrice;
  String indexed;
  String visibility;
  String advancedStockManagement;
  DateTime dateAdd;
  DateTime dateUpd;
  String packStockType;
  List<AvailableLater> metaDescription;
  List<AvailableLater> metaKeywords;
  List<AvailableLater> metaTitle;
  List<AvailableLater> linkRewrite;
  List<AvailableLater> name;
  List<AvailableLater> description;
  List<AvailableLater> descriptionShort;
  List<AvailableLater> availableNow;
  List<AvailableLater> availableLater;
  Associations associations;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    idManufacturer: json["id_manufacturer"],
    idSupplier: json["id_supplier"],
    idCategoryDefault: json["id_category_default"],
    productNew: json["new"],
    cacheDefaultAttribute: json["cache_default_attribute"],
    idDefaultImage: json["id_default_image"],
    idDefaultCombination: json["id_default_combination"],
    idTaxRulesGroup: json["id_tax_rules_group"],
    positionInCategory: json["position_in_category"],
    manufacturerName: json["manufacturer_name"],
    quantity: json["quantity"],
    type: json["type"],
    idShopDefault: json["id_shop_default"],
    reference: json["reference"],
    supplierReference: json["supplier_reference"],
    location: json["location"],
    width: json["width"],
    height: json["height"],
    depth: json["depth"],
    weight: json["weight"],
    quantityDiscount: json["quantity_discount"],
    ean13: json["ean13"],
    isbn: json["isbn"],
    upc: json["upc"],
    cacheIsPack: json["cache_is_pack"],
    cacheHasAttachments: json["cache_has_attachments"],
    isVirtual: json["is_virtual"],
    state: json["state"],
    additionalDeliveryTimes: json["additional_delivery_times"],
    deliveryInStock: List<AvailableLater>.from(json["delivery_in_stock"].map((x) => AvailableLater.fromJson(x))),
    deliveryOutStock: List<AvailableLater>.from(json["delivery_out_stock"].map((x) => AvailableLater.fromJson(x))),
    onSale: json["on_sale"],
    onlineOnly: json["online_only"],
    ecotax: json["ecotax"],
    minimalQuantity: json["minimal_quantity"],
    lowStockThreshold: json["low_stock_threshold"],
    lowStockAlert: json["low_stock_alert"],
    price: json["price"],
    wholesalePrice: json["wholesale_price"],
    unity: json["unity"],
    unitPriceRatio: json["unit_price_ratio"],
    additionalShippingCost: json["additional_shipping_cost"],
    customizable: json["customizable"],
    textFields: json["text_fields"],
    uploadableFiles: json["uploadable_files"],
    active: json["active"],
    redirectType: json["redirect_type"],
    idTypeRedirected: json["id_type_redirected"],
    availableForOrder: json["available_for_order"],
    availableDate: json["available_date"],
    showCondition: json["show_condition"],
    condition: json["condition"],
    showPrice: json["show_price"],
    indexed: json["indexed"],
    visibility: json["visibility"],
    advancedStockManagement: json["advanced_stock_management"],
    dateAdd: DateTime.parse(json["date_add"]),
    dateUpd: DateTime.parse(json["date_upd"]),
    packStockType: json["pack_stock_type"],
    metaDescription: List<AvailableLater>.from(json["meta_description"].map((x) => AvailableLater.fromJson(x))),
    metaKeywords: List<AvailableLater>.from(json["meta_keywords"].map((x) => AvailableLater.fromJson(x))),
    metaTitle: List<AvailableLater>.from(json["meta_title"].map((x) => AvailableLater.fromJson(x))),
    linkRewrite: List<AvailableLater>.from(json["link_rewrite"].map((x) => AvailableLater.fromJson(x))),
    name: List<AvailableLater>.from(json["name"].map((x) => AvailableLater.fromJson(x))),
    description: List<AvailableLater>.from(json["description"].map((x) => AvailableLater.fromJson(x))),
    descriptionShort: List<AvailableLater>.from(json["description_short"].map((x) => AvailableLater.fromJson(x))),
    availableNow: List<AvailableLater>.from(json["available_now"].map((x) => AvailableLater.fromJson(x))),
    availableLater: List<AvailableLater>.from(json["available_later"].map((x) => AvailableLater.fromJson(x))),
    associations: Associations.fromJson(json["associations"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "id_manufacturer": idManufacturer,
    "id_supplier": idSupplier,
    "id_category_default": idCategoryDefault,
    "new": productNew,
    "cache_default_attribute": cacheDefaultAttribute,
    "id_default_image": idDefaultImage,
    "id_default_combination": idDefaultCombination,
    "id_tax_rules_group": idTaxRulesGroup,
    "position_in_category": positionInCategory,
    "manufacturer_name": manufacturerName,
    "quantity": quantity,
    "type": type,
    "id_shop_default": idShopDefault,
    "reference": reference,
    "supplier_reference": supplierReference,
    "location": location,
    "width": width,
    "height": height,
    "depth": depth,
    "weight": weight,
    "quantity_discount": quantityDiscount,
    "ean13": ean13,
    "isbn": isbn,
    "upc": upc,
    "cache_is_pack": cacheIsPack,
    "cache_has_attachments": cacheHasAttachments,
    "is_virtual": isVirtual,
    "state": state,
    "additional_delivery_times": additionalDeliveryTimes,
    "delivery_in_stock": List<dynamic>.from(deliveryInStock.map((x) => x.toJson())),
    "delivery_out_stock": List<dynamic>.from(deliveryOutStock.map((x) => x.toJson())),
    "on_sale": onSale,
    "online_only": onlineOnly,
    "ecotax": ecotax,
    "minimal_quantity": minimalQuantity,
    "low_stock_threshold": lowStockThreshold,
    "low_stock_alert": lowStockAlert,
    "price": price,
    "wholesale_price": wholesalePrice,
    "unity": unity,
    "unit_price_ratio": unitPriceRatio,
    "additional_shipping_cost": additionalShippingCost,
    "customizable": customizable,
    "text_fields": textFields,
    "uploadable_files": uploadableFiles,
    "active": active,
    "redirect_type": redirectType,
    "id_type_redirected": idTypeRedirected,
    "available_for_order": availableForOrder,
    "available_date": availableDate,
    "show_condition": showCondition,
    "condition": condition,
    "show_price": showPrice,
    "indexed": indexed,
    "visibility": visibility,
    "advanced_stock_management": advancedStockManagement,
    "date_add": dateAdd.toIso8601String(),
    "date_upd": dateUpd.toIso8601String(),
    "pack_stock_type": packStockType,
    "meta_description": List<dynamic>.from(metaDescription.map((x) => x.toJson())),
    "meta_keywords": List<dynamic>.from(metaKeywords.map((x) => x.toJson())),
    "meta_title": List<dynamic>.from(metaTitle.map((x) => x.toJson())),
    "link_rewrite": List<dynamic>.from(linkRewrite.map((x) => x.toJson())),
    "name": List<dynamic>.from(name.map((x) => x.toJson())),
    "description": List<dynamic>.from(description.map((x) => x.toJson())),
    "description_short": List<dynamic>.from(descriptionShort.map((x) => x.toJson())),
    "available_now": List<dynamic>.from(availableNow.map((x) => x.toJson())),
    "available_later": List<dynamic>.from(availableLater.map((x) => x.toJson())),
    "associations": associations.toJson(),
  };
}

class Associations {
  Associations({
    this.categories,
    this.images,
    this.combinations,
    this.productOptionValues,
    this.stockAvailables,
  });

  List<Category> categories;
  List<Category> images;
  List<Category> combinations;
  List<Category> productOptionValues;
  List<StockAvailable> stockAvailables;

  factory Associations.fromJson(Map<String, dynamic> json) => Associations(
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    images: List<Category>.from(json["images"].map((x) => Category.fromJson(x))),
    combinations: List<Category>.from(json["combinations"].map((x) => Category.fromJson(x))),
    productOptionValues: List<Category>.from(json["product_option_values"].map((x) => Category.fromJson(x))),
    stockAvailables: List<StockAvailable>.from(json["stock_availables"].map((x) => StockAvailable.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "combinations": List<dynamic>.from(combinations.map((x) => x.toJson())),
    "product_option_values": List<dynamic>.from(productOptionValues.map((x) => x.toJson())),
    "stock_availables": List<dynamic>.from(stockAvailables.map((x) => x.toJson())),
  };
}

class Category {
  Category({
    this.id,
  });

  String id;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class StockAvailable {
  StockAvailable({
    this.id,
    this.idProductAttribute,
  });

  String id;
  String idProductAttribute;

  factory StockAvailable.fromJson(Map<String, dynamic> json) => StockAvailable(
    id: json["id"],
    idProductAttribute: json["id_product_attribute"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "id_product_attribute": idProductAttribute,
  };
}

class AvailableLater {
  AvailableLater({
    this.id,
    this.value,
  });

  String id;
  String value;

  factory AvailableLater.fromJson(Map<String, dynamic> json) => AvailableLater(
    id: json["id"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "value": value,
  };
}
