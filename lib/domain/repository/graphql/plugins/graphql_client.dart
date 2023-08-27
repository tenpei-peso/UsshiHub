
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