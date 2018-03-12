class ZCL_MOCKA_VALUE_COMPARISON definition
  public
  abstract
  final
  create public .

public section.

  class-methods ASSERT_EQUALS
    importing
      !EXP type ANY
      !ACT type ANY
    returning
      value(RV_EQUALS) type ABAP_BOOL .
protected section.
private section.

  constants RTOL_MIN type F value '1.E-15' ##NO_TEXT.
ENDCLASS.



CLASS ZCL_MOCKA_VALUE_COMPARISON IMPLEMENTATION.


METHOD assert_equals.
  DATA lo_type TYPE REF TO cl_abap_typedescr.
  rv_equals = abap_true.
  TRY.
      IF exp EQ act.
        rv_equals = abap_true.
      ELSE.
        rv_equals = abap_false.
      ENDIF.
    CATCH cx_root.
      rv_equals = abap_false.
  ENDTRY.
ENDMETHOD.
ENDCLASS.
