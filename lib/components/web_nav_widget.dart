import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'web_nav_model.dart';
export 'web_nav_model.dart';

class WebNavWidget extends StatefulWidget {
  const WebNavWidget({super.key});

  @override
  State<WebNavWidget> createState() => _WebNavWidgetState();
}

class _WebNavWidgetState extends State<WebNavWidget>
    with TickerProviderStateMixin {
  late WebNavModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebNavModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(115.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: valueOrDefault<bool>(
            FFAppState().menuAberto == true,
            true,
          ) &&
          responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ),
      child: Container(
        width: 270.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 2.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.handshake_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 32.0,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Clinical',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 12.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Navegação',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Dashboard');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.database,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Banco de dados',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Agendamento',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Configurações',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.notifications_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Notifications',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 4.0, 8.0, 4.0),
                                    child: Text(
                                      '12',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.attach_money_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Finanças',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.post_add,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Blog',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.settings,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Configurações',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4F8),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: const Color(0xFFE0E3E7),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setDarkModeSetting(context, ThemeMode.light);
                              },
                              child: Container(
                                width: 115.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.white
                                      : const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: valueOrDefault<Color>(
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? const Color(0xFFE0E3E7)
                                          : const Color(0xFFF1F4F8),
                                      const Color(0xFFE0E3E7),
                                    ),
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.wb_sunny_rounded,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? const Color(0xFF14181B)
                                          : const Color(0xFF57636C),
                                      size: 16.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Light Mode',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.light
                                                  ? const Color(0xFF14181B)
                                                  : const Color(0xFF57636C),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setDarkModeSetting(context, ThemeMode.dark);
                              },
                              child: Container(
                                width: 115.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: valueOrDefault<Color>(
                                      Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xFFE0E3E7)
                                          : const Color(0xFFF1F4F8),
                                      const Color(0xFFF1F4F8),
                                    ),
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.nightlight_round,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xFF14181B)
                                          : const Color(0xFF57636C),
                                      size: 16.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Dark Mode',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? const Color(0xFF14181B)
                                                  : const Color(0xFF57636C),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnActionTrigger(
                              animationsMap[
                                  'containerOnActionTriggerAnimation']!,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 12.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeOutDuration: const Duration(milliseconds: 500),
                              imageUrl:
                                  'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                              width: 44.0,
                              height: 44.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Breno H.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'admin@gmail.com',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('auth_Login', context.mounted);
                        },
                        child: Icon(
                          Icons.exit_to_app,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().update(() {
                      FFAppState().menuAberto = false;
                    });
                  },
                  child: Icon(
                    Icons.menu_open_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
