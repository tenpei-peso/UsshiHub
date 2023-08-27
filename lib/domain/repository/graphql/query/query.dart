// GraphQLのクエリ\$nRepositories: Int!
const String query = """
    query(\$userName:String!) {
      user(login: \$userName){
        avatarUrl
        name
        contributionsCollection {
          contributionCalendar {
            weeks {
              contributionDays {
                contributionCount
                date
              }
            }
          }
        }
      }
    }
  """;