# Liberty

This project is using: Xcode 10.1 and Swift 4.2



Jenkins: [link](https://ebk-mdev-jenkins.es.dus1.cloud/jenkins/job/iOS%20Liberty%20SDK/)

Jira Boards: [link](https://jira.corp.ebay.com/secure/RapidBoard.jspa?rapidView=2733&view=detail&selectedIssue=LIB-17)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Liberty is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Liberty', git: 'git@github.corp.ebay.com:eBay-Kleinanzeigen/ios-liberty-sdk.git', tag: '0.2.0'
```

## Tests
This project includes UnitTests and snapshot tests. The recorded images are stored in the `fastlane/SnapshotTests` folder.
Inside the `fastlane/FailureDiffs` are stored the diffs when the tests fail.

## Fastlane
This project uses `fastlane` for the automation.

Type `bundle exec fastlane` inside the root of the project to discover all the options or click [here](fastlane/README.md)


## CodeFormat
This project uses `swiftlint` to enforce few formatting rules.
Some formatting errors can be automatically fixed: type `fastlane lint_autocorrect` to format the code.


## Documentation
This project uses `yazzy` to generate the documentation in html.
Type `fastlane gen_doc` to generate the documentation. The current version of the doc can be found [here](docs/index.html)

## Changelog
Take a look to our [changelog](CHANGELOG.md)

## Release
Run `fastlane release` to create a release.
The script should be executed after that `develop` is merged into `master` and it takes care of:

1. Bump the release number.
2. Update the CHANGELOG.md.
3. Create the new tag and push it to github.

The script by default will bump only the last digit of the release `0.0.1 -> 0.0.2`. Read the Fastfile if you need to have release a major update.
