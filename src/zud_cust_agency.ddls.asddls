@EndUserText.label: 'Custom Entity for Agency'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_AGENCY_GET'

@UI: {headerInfo: { typeName: 'Agency',
                  typeNamePlural: 'Agency',
                  title: { type: #STANDARD, label: 'Agency', value: 'Agency_Id' } }

                  }
define custom entity ZUD_CUST_AGENCY

{

  key Agency_Id   : abap.char( 6 );
      //      @OData.property.valueControl: 'Name_vc'
      Name        : abap.char( 31 );
      //      Name_vc        : rap_cp_odata_value_control;
      //      @OData.property.valueControl: 'Street_vc'
      Street      : abap.char( 30 );
      //      Street_vc      : rap_cp_odata_value_control;
      //      @OData.property.valueControl: 'PostalCode_vc'
      PostalCode  : abap.char( 10 );
      //      PostalCode_vc  : rap_cp_odata_value_control;
      //      @OData.property.valueControl: 'City_vc'
      City        : abap.char( 25 );
      //      City_vc        : rap_cp_odata_value_control;
      //      @OData.property.valueControl: 'Country_vc'
      Country     : abap.char( 3 );
      //      Country_vc     : rap_cp_odata_value_control;
      //      @OData.property.valueControl: 'PhoneNumber_vc'
      PhoneNumber : abap.char( 30 );
      //      PhoneNumber_vc : rap_cp_odata_value_control;
      //      @OData.property.valueControl: 'WebAddress_vc'
      WebAddress  : abap.char( 255 );
      //      WebAddress_vc  : rap_cp_odata_value_control;

}
