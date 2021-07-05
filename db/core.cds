namespace procurement;
using { managed } from '@sap/cds/common';

entity PurchaseOrders : managed {
    Key POId : String;
    DeliveryAddress : String;
    GrossAmount : Integer ;
    Supplier : Association to Suppliers;
    
}

entity Suppliers @cds.autoexpose {
    key Id : String;
    Name : String;
    Phone : String ; 
    Email : String;
    
}