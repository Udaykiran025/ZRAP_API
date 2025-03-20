"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>ZHM_PROJECT_SRV</em>
CLASS zud_sc_hsm DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">zadmin</p>
      BEGIN OF tys_zadmin,
        "! <em>Key property</em> Username
        username TYPE c LENGTH 20,
        "! Password
        password TYPE c LENGTH 15,
      END OF tys_zadmin,
      "! <p class="shorttext synchronized">List of zadmin</p>
      tyt_zadmin TYPE STANDARD TABLE OF tys_zadmin WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">zappointment</p>
      BEGIN OF tys_zappointment,
        "! <em>Key property</em> Id
        id           TYPE int4,
        "! Pid
        pid          TYPE int4,
        "! Fname
        fname        TYPE c LENGTH 20,
        "! Lname
        lname        TYPE c LENGTH 20,
        "! Gender
        gender       TYPE c LENGTH 10,
        "! Email
        email        TYPE c LENGTH 30,
        "! Contact
        contact      TYPE c LENGTH 10,
        "! Doctor
        doctor       TYPE c LENGTH 30,
        "! Docfees
        docfees      TYPE int4,
        "! Appdate
        appdate      TYPE timestampl,
        "! Apptime
        apptime      TYPE timn,
        "! Userstatus
        userstatus   TYPE int4,
        "! Doctorstatus
        doctorstatus TYPE int4,
      END OF tys_zappointment,
      "! <p class="shorttext synchronized">List of zappointment</p>
      tyt_zappointment TYPE STANDARD TABLE OF tys_zappointment WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">zdoctor</p>
      BEGIN OF tys_zdoctor,
        "! <em>Key property</em> Doctorid
        doctorid       TYPE int4,
        "! Username
        username       TYPE c LENGTH 20,
        "! Password
        password       TYPE c LENGTH 15,
        "! Email
        email          TYPE c LENGTH 30,
        "! Specialization
        specialization TYPE c LENGTH 20,
        "! Docfees
        docfees        TYPE int4,
      END OF tys_zdoctor,
      "! <p class="shorttext synchronized">List of zdoctor</p>
      tyt_zdoctor TYPE STANDARD TABLE OF tys_zdoctor WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">zpatient</p>
      BEGIN OF tys_zpatient,
        "! <em>Key property</em> Pid
        pid       TYPE int4,
        "! Fname
        fname     TYPE c LENGTH 20,
        "! Lname
        lname     TYPE c LENGTH 20,
        "! Gender
        gender    TYPE c LENGTH 10,
        "! Email
        email     TYPE c LENGTH 30,
        "! Contact
        contact   TYPE c LENGTH 10,
        "! Password
        password  TYPE c LENGTH 30,
        "! Cpassword
        cpassword TYPE c LENGTH 30,
      END OF tys_zpatient,
      "! <p class="shorttext synchronized">List of zpatient</p>
      tyt_zpatient TYPE STANDARD TABLE OF tys_zpatient WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">zprescription</p>
      BEGIN OF tys_zprescription,
        "! <em>Key property</em> Id
        id           TYPE c LENGTH 10,
        "! <em>Key property</em> Pid
        pid          TYPE int4,
        "! Doctor
        doctor       TYPE c LENGTH 30,
        "! Fname
        fname        TYPE c LENGTH 20,
        "! Lname
        lname        TYPE c LENGTH 20,
        "! Appdate
        appdate      TYPE timestampl,
        "! Apptime
        apptime      TYPE timn,
        "! Disease
        disease      TYPE c LENGTH 100,
        "! Allergy
        allergy      TYPE c LENGTH 100,
        "! Prescription
        prescription TYPE c LENGTH 250,
      END OF tys_zprescription,
      "! <p class="shorttext synchronized">List of zprescription</p>
      tyt_zprescription TYPE STANDARD TABLE OF tys_zprescription WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! zadminSet
        "! <br/> Collection of type 'zadmin'
        zadmin_set        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZADMIN_SET',
        "! zappointmentSet
        "! <br/> Collection of type 'zappointment'
        zappointment_set  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZAPPOINTMENT_SET',
        "! zdoctorSet
        "! <br/> Collection of type 'zdoctor'
        zdoctor_set       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZDOCTOR_SET',
        "! zpatientSet
        "! <br/> Collection of type 'zpatient'
        zpatient_set      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZPATIENT_SET',
        "! zprescriptionSet
        "! <br/> Collection of type 'zprescription'
        zprescription_set TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZPRESCRIPTION_SET',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for zadmin</p>
        "! See also structure type {@link ..tys_zadmin}
        BEGIN OF zadmin,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF zadmin,
        "! <p class="shorttext synchronized">Internal names for zappointment</p>
        "! See also structure type {@link ..tys_zappointment}
        BEGIN OF zappointment,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF zappointment,
        "! <p class="shorttext synchronized">Internal names for zdoctor</p>
        "! See also structure type {@link ..tys_zdoctor}
        BEGIN OF zdoctor,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF zdoctor,
        "! <p class="shorttext synchronized">Internal names for zpatient</p>
        "! See also structure type {@link ..tys_zpatient}
        BEGIN OF zpatient,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF zpatient,
        "! <p class="shorttext synchronized">Internal names for zprescription</p>
        "! See also structure type {@link ..tys_zprescription}
        BEGIN OF zprescription,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF zprescription,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define zadmin</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zadmin RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define zappointment</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zappointment RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define zdoctor</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zdoctor RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define zpatient</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zpatient RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define zprescription</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zprescription RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zud_sc_hsm IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'ZHM_PROJECT_SRV' ) ##NO_TEXT.

    def_zadmin( ).
    def_zappointment( ).
    def_zdoctor( ).
    def_zpatient( ).
    def_zprescription( ).

  ENDMETHOD.


  METHOD def_zadmin.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZADMIN'
                                    is_structure              = VALUE tys_zadmin( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'zadmin' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ZADMIN_SET' ).
    lo_entity_set->set_edm_name( 'zadminSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'USERNAME' ).
    lo_primitive_property->set_edm_name( 'Username' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PASSWORD' ).
    lo_primitive_property->set_edm_name( 'Password' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_zappointment.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZAPPOINTMENT'
                                    is_structure              = VALUE tys_zappointment( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'zappointment' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ZAPPOINTMENT_SET' ).
    lo_entity_set->set_edm_name( 'zappointmentSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PID' ).
    lo_primitive_property->set_edm_name( 'Pid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FNAME' ).
    lo_primitive_property->set_edm_name( 'Fname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LNAME' ).
    lo_primitive_property->set_edm_name( 'Lname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GENDER' ).
    lo_primitive_property->set_edm_name( 'Gender' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL' ).
    lo_primitive_property->set_edm_name( 'Email' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT' ).
    lo_primitive_property->set_edm_name( 'Contact' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCTOR' ).
    lo_primitive_property->set_edm_name( 'Doctor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCFEES' ).
    lo_primitive_property->set_edm_name( 'Docfees' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'APPDATE' ).
    lo_primitive_property->set_edm_name( 'Appdate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'APPTIME' ).
    lo_primitive_property->set_edm_name( 'Apptime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USERSTATUS' ).
    lo_primitive_property->set_edm_name( 'Userstatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCTORSTATUS' ).
    lo_primitive_property->set_edm_name( 'Doctorstatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_zdoctor.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZDOCTOR'
                                    is_structure              = VALUE tys_zdoctor( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'zdoctor' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ZDOCTOR_SET' ).
    lo_entity_set->set_edm_name( 'zdoctorSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCTORID' ).
    lo_primitive_property->set_edm_name( 'Doctorid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USERNAME' ).
    lo_primitive_property->set_edm_name( 'Username' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PASSWORD' ).
    lo_primitive_property->set_edm_name( 'Password' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL' ).
    lo_primitive_property->set_edm_name( 'Email' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SPECIALIZATION' ).
    lo_primitive_property->set_edm_name( 'Specialization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCFEES' ).
    lo_primitive_property->set_edm_name( 'Docfees' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_zpatient.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZPATIENT'
                                    is_structure              = VALUE tys_zpatient( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'zpatient' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ZPATIENT_SET' ).
    lo_entity_set->set_edm_name( 'zpatientSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PID' ).
    lo_primitive_property->set_edm_name( 'Pid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FNAME' ).
    lo_primitive_property->set_edm_name( 'Fname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LNAME' ).
    lo_primitive_property->set_edm_name( 'Lname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GENDER' ).
    lo_primitive_property->set_edm_name( 'Gender' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL' ).
    lo_primitive_property->set_edm_name( 'Email' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT' ).
    lo_primitive_property->set_edm_name( 'Contact' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PASSWORD' ).
    lo_primitive_property->set_edm_name( 'Password' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CPASSWORD' ).
    lo_primitive_property->set_edm_name( 'Cpassword' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_zprescription.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZPRESCRIPTION'
                                    is_structure              = VALUE tys_zprescription( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'zprescription' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ZPRESCRIPTION_SET' ).
    lo_entity_set->set_edm_name( 'zprescriptionSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PID' ).
    lo_primitive_property->set_edm_name( 'Pid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCTOR' ).
    lo_primitive_property->set_edm_name( 'Doctor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FNAME' ).
    lo_primitive_property->set_edm_name( 'Fname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LNAME' ).
    lo_primitive_property->set_edm_name( 'Lname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'APPDATE' ).
    lo_primitive_property->set_edm_name( 'Appdate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'APPTIME' ).
    lo_primitive_property->set_edm_name( 'Apptime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISEASE' ).
    lo_primitive_property->set_edm_name( 'Disease' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 100 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLERGY' ).
    lo_primitive_property->set_edm_name( 'Allergy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 100 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Prescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 250 ) ##NUMBER_OK.

  ENDMETHOD.


ENDCLASS.
