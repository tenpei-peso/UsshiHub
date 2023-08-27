
import 'package:graphql/client.dart';

final HttpLink httpLink = HttpLink(
  'https://api.github.com/graphql',
);

final AuthLink authLink = AuthLink(
  getToken: () async => 'Bearer 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',
);

final Link link = authLink.concat(httpLink);

final client = GraphQLClient(
    link: link,
    cache: GraphQLCache(
      store: HiveStore(),
    )
);