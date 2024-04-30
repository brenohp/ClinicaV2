import '/components/web_nav_closed_widget.dart';
import '/components/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WebNavClosed component.
  late WebNavClosedModel webNavClosedModel;
  // Model for WebNav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    webNavClosedModel = createModel(context, () => WebNavClosedModel());
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavClosedModel.dispose();
    webNavModel.dispose();
    tabBarController?.dispose();
  }
}
