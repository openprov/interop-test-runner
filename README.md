# Provenance Tool Suite Interoperability Tests

[Provenance Tool Suite](http://provenance.ecs.soton.ac.uk/) interoperability test harness jobs for [Travis CI](https://travis-ci.org/). The Travis CI job in this repository tests:

* [ProvPy](https://github.com/trungdong/prov)
* [ProvToolbox](https://github.com/lucmoreau/ProvToolbox)
* [ProvStore](https://provenance.ecs.soton.ac.uk/store/)
* [ProvTranslattor](https://provenance.ecs.soton.ac.uk/validator/view/translator.html)

The job uses the Provenance Tool Suite:

* Canonical [test cases](https://github.com/prov-suite/testcases) from GitHub (stable master branch).
* [Interoperability test harness](https://github.com/prov-suite/interop-test-harness) from GitHub (stable master branch).

Current status:

[![Build Status](https://travis-ci.org/prov-suite/interop-test-runner.svg)](https://travis-ci.org/prov-suite/interop-test-runner)

## Configuring a ProvStore API key

The job assumes you have:

* Created a ProvStore API Key:

  - Log in to [ProvStore](https://provenance.ecs.soton.ac.uk/store)
  - Select Account => Developer Area
  - You will see your API key

* Defined a Travis CI variable, `PROVSTORE_API_KEY` holding your ProvStore user name and API key:

  - Visit your job's settings page in Travis CI
  -  Select settings
  -  Click Environment Variables
  -  Click Add a new variable
  -  Name: `PROVSTORE_API_KEY`
  -  Value: `user:qwert12345`
  -  Ensure Display value in build logs is *not* selected

See [define variables in repository settings](http://docs.travis-ci.com/user/environment-variables/#Defining-Variables-in-Repository-Settings).

## Author

Developed by [The Software Sustainability Institute](http://www.software.ac.uk>) and the [Provenance Tool Suite](http://provenance.ecs.soton.ac.uk/) team at [Electronics and Computer Science](http://www.ecs.soton.ac.uk) at the [University of Southampton](http://www.soton.ac.uk).

For more information, see our [document repository](https://github.com/prov-suite/ssi-consultancy/).

## License

These tests are released under the MIT license.
