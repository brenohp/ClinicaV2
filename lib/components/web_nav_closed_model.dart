import '/components/dark_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_nav_closed_widget.dart' show WebNavClosedWidget;
import 'package:flutter/material.dart';

class WebNavClosedModel extends FlutterFlowModel<WebNavClosedWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for dark component.
  late DarkModel darkModel;

  @override
  void initState(BuildContext context) {
    darkModel = createModel(context, () => DarkModel());
  }

  @override
  void dispose() {
    darkModel.dispose();
  }
}
