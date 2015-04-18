# Contributing to reek

We welcome any and all contributions to reek!

If what you’re proposing requires significant work discuss it beforehand
as an issue – it’s much easier for us to guide you towards a good
solution and less frustrating for you than doing a lot of work
only to find us suggesting large parts should be rewritten.

Don’t hesitate to offer trivial fixes (spelling, better naming
ideas, etc.) – we’ll let you know if you’re overdoing it. :)

If you don’t feel like getting your hands dirty with code do feel free
to work on the [wiki](https://github.com/troessner/reek/wiki). :)



## Reporting Issues

Search [all existing (open _and_ closed)
issues](https://github.com/troessner/reek/issues?q=is%3Aissue)
for a possible previous report; comment there if the issue is not
actually resolved properly or you have any additional information.

Include the steps to reproduce the issue,
the expected outcome and the actual outcome.

Include as much information as possible: the exact reek
invocation that you use, reek’s config and version, Ruby
version, Ruby platform (MRI, JRuby, etc.), operating system.

Try to provide a minimal example that reproduces the issue.
Extra kudos if you can write it as a failing test. :)



## Setup and Pull Request Basics

Fork reek, then clone it, make sure you have
[Bundler](http://bundler.io) installed, install dependencies
and make sure all of the existing tests pass:

```
git clone git@github.com:…username…/reek.git
cd reek
gem install bundler
bundle
bundle exec rake
```

Once you’re sure your copy of reek works (and that there are no
failing tests on master…) create your own branch and start hacking:

```
git checkout -b your_feature_or_fix_name
```

Add new tests which make sure that your new feature works or
demonstrate that your fix was needed; please also [write good commit
messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

Remember that you can run particular tests and scenarios:

```bash
bundle exec rspec spec/your/file_spec.rb            # Runs all tests in spec/your/file_spec.rb
bundle exec rspec spec/your/file_spec.rb:23         # Runs test in line 23
bundle exec cucumber features/your_file.feature     # Runs all scenarios in your_file.feature
bundle exec cucumber features/your_file.feature:23  # Runs scenario at line 23
```

Once you’re happy with your feature / fix – or want to
share it as a work-in-progress and request comments – once
again make sure all of the tests pass. This will also run
[RuboCop](https://github.com/bbatsov/rubocop) – fix any
offences RuboCop finds (or discuss them in the pull request):

```
bundle exec rake
```

Once your code is ready for review push it to your repository:

```
git push -u origin
```

Then go to your GitHub fork and [make a pull
request](https://help.github.com/articles/creating-a-pull-request/)
to the original repository.



## Review and Fixes

Try to gauge and let us know in the pull request whether what
you propose is a backward-compatible bugfix and should go into the
next patch release, is a backward-compatible feature and should go
into the next minor release, or has to break backward-compatibility
and so needs to wait for the next major release of reek.

Once your PR is open someone will review it, discuss the details (if
needed) and either merge right away or ask for some further fixes.

GitHub doesn’t have a good way to amend pull requests from external
repositories. In cases where it’s easier to make a direct fix
to your pull request (rather than describing it in the comments)
we’ll either open a separate pull request to the branch in your
repository or ask you to give us commit access to your repository.

If there were any fixes to your pull request we’ll ask you to
[squash](http://git-scm.com/book/en/v2/Git-Tools-Rewriting-History#Squashing-Commits)
all of the commits into one:

```
git rebase -i master
# squash squash squash
git push -f origin
```
