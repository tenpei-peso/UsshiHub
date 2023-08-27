// GraphQLのクエリ\$nRepositories: Int!
const String query = """
    query(\$userName:String!) {
      user(login: \$userName){
        contributionsCollection {
          contributionCalendar {
            totalContributions
            weeks {
              contributionDays {
                contributionCount
                date
                weekday
              }
            }
          }
        }
      }
    }
  """;