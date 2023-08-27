import 'package:graphql/client.dart';
import 'package:ussihub/domain/repository/graphql/model/repository.dart';
import 'package:ussihub/domain/repository/graphql/plugins/graphql_client.dart';
import 'package:ussihub/domain/repository/graphql/query/query.dart';

Future<List<Repository>?> fetchRepositories() async {
  final response = await client.query(
    QueryOptions(document: gql(query),variables: {
      'userName': 'tenpei-peso',
    },)
  );
  final List<dynamic>? weeks = response.data?['user']?['contributionsCollection']?['contributionCalendar']?['weeks'];
  final Map<String, dynamic> lastWeek = weeks?[weeks.length -2];
  final List<dynamic>? result = lastWeek['contributionDays'];
  final List<Repository> repositoryList = result!.map((dynamic item) => Repository.fromJson(item)).toList();
  return repositoryList;
}