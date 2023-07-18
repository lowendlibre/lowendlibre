# Contributing

## Licenses

We generally use [GPLv3](https://www.gnu.org/licenses/gpl-3.0.txt), however there are a few exceptions:

- For server-side software, web apps, and software that would be used in CI workflows, we use [AGPLv3](https://www.gnu.org/licenses/agpl-3.0.txt).
- For Rust crates (**not** standalone Rust programs), we dual-license it under [MIT](https://opensource.org/license/MIT/) / [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt), as it is commonly used for Rust crates.
- For Go modules (**not** standalone Go programs), we use [the MIT license](https://opensource.org/license/MIT/), as it is commonly used for Go modules.
- For libraries which would be used be nonfree or even just non-GPL software, we use [LGPLv3](https://www.gnu.org/licenses/lgpl-3.0.txt).
- For modified versions of software that is not part of the lowendlibre project, we keep the original license.

## Code style

We use the language-specific code style, with a few exceptions:

- Tabs are used for indentation.
- Arguments in function declarations must stay on the same line.

Make sure that the language-specific formatter (if any) follows the above guidelines, and always run the formatter before commiting.
