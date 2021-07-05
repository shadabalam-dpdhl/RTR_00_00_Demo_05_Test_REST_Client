using { procurement as source } from '../db/core';

service  ReadPurchaseOrders {
  entity PurchaseOrders @readonly as projection on source.PurchaseOrders;
}

service  ReadPurchaseOrders_NoTechInfo {
  entity PurchaseOrders @readonly as projection on source.PurchaseOrders 
  excluding { createdAt, createdBy, modifiedAt, modifiedBy } ;
} 

service  CreatePurchaseOrders {
  entity PurchaseOrders @insertonly as projection on source.PurchaseOrders;
}


