import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../core/tokens/token.dart';
import '../../di.dart';
import 'src/bloc.dart';
import 'src/chart_interval.dart';

export 'src/widgets/token_chart.dart';
export 'src/widgets/token_overview.dart';

class TokenChartModule extends SingleChildStatelessWidget {
  const TokenChartModule(this.token, {Key? key, Widget? child})
      : super(key: key, child: child);

  final Token token;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      BlocProvider<TokenChartBloc>(
        create: (_) => sl<TokenChartBloc>(param1: token)
          ..add(const FetchChartRequested(interval: ChartInterval.oneMonth)),
        child: child,
      );
}
