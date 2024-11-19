import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sinpe_movil_widget.dart' show SinpeMovilWidget;
import 'package:flutter/material.dart';

class SinpeMovilModel extends FlutterFlowModel<SinpeMovilWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumeroDestino widget.
  FocusNode? txtNumeroDestinoFocusNode;
  TextEditingController? txtNumeroDestinoTextController;
  String? Function(BuildContext, String?)?
      txtNumeroDestinoTextControllerValidator;
  String? _txtNumeroDestinoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este dato es requerido';
    }

    return null;
  }

  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoTextController;
  String? Function(BuildContext, String?)? txtMontoTextControllerValidator;
  String? _txtMontoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este dato es requerido';
    }

    return null;
  }

  // State field(s) for txtDetalle widget.
  FocusNode? txtDetalleFocusNode;
  TextEditingController? txtDetalleTextController;
  String? Function(BuildContext, String?)? txtDetalleTextControllerValidator;
  String? _txtDetalleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este dato es requerido';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    txtNumeroDestinoTextControllerValidator =
        _txtNumeroDestinoTextControllerValidator;
    txtMontoTextControllerValidator = _txtMontoTextControllerValidator;
    txtDetalleTextControllerValidator = _txtDetalleTextControllerValidator;
  }

  @override
  void dispose() {
    txtNumeroDestinoFocusNode?.dispose();
    txtNumeroDestinoTextController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoTextController?.dispose();

    txtDetalleFocusNode?.dispose();
    txtDetalleTextController?.dispose();
  }
}
