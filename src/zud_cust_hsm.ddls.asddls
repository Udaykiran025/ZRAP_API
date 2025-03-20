@EndUserText.label: 'Hospital management'

@ObjectModel.query.implementedBy: 'ABAP:ZCL_DOCTOR_GET'

@UI: {headerInfo: { typeName: 'Doctor',
                  typeNamePlural: 'Doctors',
                  title: { type: #STANDARD, label: 'Doctor', value: 'Doctorid' } }

                  }
define custom entity ZUD_CUST_HSM

{
  key Doctorid       : abap.int4;
      Username       : abap.char( 20 );
      Password       : abap.char( 15 );
      Email          : abap.char( 30 );
      Specialization : abap.char( 20 );
      Docfees        : abap.int4;
}
