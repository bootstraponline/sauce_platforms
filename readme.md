# Sauce Platforms [![Gem Version](https://badge.fury.io/rb/sauce_platforms.svg)](https://rubygems.org/gems/sauce_platforms)[![Build Status](https://travis-ci.org/bootstraponline/sauce_platforms.svg?branch=master)](https://travis-ci.org/bootstraponline/sauce_platforms)

Dependency free DSL for specifying [Sauce Labs platforms](https://saucelabs.com/platforms/).  The gem is automatically generated before publishing to rubygems via `sauce_whisk.platforms(true)`.

RSpec tests are also automatically generated to ensure the method calls don't error. RSpec tests run on Travis.

#### Usage

`require 'sauce_platforms'`

- `Platform.mac_10_6.firefox.v7` - built in version numbers
- `Platform.mac_10_6.firefox.v'39'` - custom version number via `v` method

Example in Pry:

```ruby
require 'sauce_platforms'
> Platform.mac_10_6.chrome.v33
=> ["Mac 10.6", "chrome", "33"]

> Platform.mac_10_6.chrome.v'100'
=> ["Mac 10.6", "chrome", "100"]

# Invalid combinations correctly throw undefined method error
> Platform.mac_10_6.chrome.v999
NoMethodError: undefined method `v999` for Platform::Mac_10_6_chrome:Module
```


Advantages over magic strings:

- RubyMine auto completes the values
- A client side error is generated if an invalid combination is specified.

Intended to be used with the [sauce_ruby gem.](https://github.com/saucelabs/sauce_ruby)

#### Generate new platforms

- `ruby ./lib/sauce_platforms/generate_sauce_platforms.rb`

#### Test coverage

```
$ rspec

mac_10_6
  Platform.mac_10_6.ipad.v4_3
  Platform.mac_10_6.ipad.v5_0
  Platform.mac_10_6.firefox.v4
  Platform.mac_10_6.firefox.v5
  Platform.mac_10_6.firefox.v6
  Platform.mac_10_6.firefox.v7
  Platform.mac_10_6.firefox.v8
  Platform.mac_10_6.firefox.v9
  Platform.mac_10_6.firefox.v10
  Platform.mac_10_6.firefox.v11
  Platform.mac_10_6.firefox.v12
  Platform.mac_10_6.firefox.v13
  Platform.mac_10_6.firefox.v14
  Platform.mac_10_6.firefox.v15
  Platform.mac_10_6.firefox.v16
  Platform.mac_10_6.firefox.v17
  Platform.mac_10_6.firefox.v18
  Platform.mac_10_6.firefox.v19
  Platform.mac_10_6.firefox.v20
  Platform.mac_10_6.firefox.v21
  Platform.mac_10_6.firefox.v22
  Platform.mac_10_6.firefox.v23
  Platform.mac_10_6.firefox.v24
  Platform.mac_10_6.firefox.v25
  Platform.mac_10_6.firefox.v26
  Platform.mac_10_6.firefox.v27
  Platform.mac_10_6.firefox.v28
  Platform.mac_10_6.firefox.v29
  Platform.mac_10_6.firefox.v30
  Platform.mac_10_6.firefox.v31
  Platform.mac_10_6.firefox.v32
  Platform.mac_10_6.firefox.v33
  Platform.mac_10_6.firefox.v34
  Platform.mac_10_6.firefox.v35
  Platform.mac_10_6.firefox.v36
  Platform.mac_10_6.firefox.v37
  Platform.mac_10_6.firefox.beta
  Platform.mac_10_6.firefox.dev
  Platform.mac_10_6.iphone.v4_3
  Platform.mac_10_6.iphone.v5_0
  Platform.mac_10_6.safari.v5
  Platform.mac_10_6.chrome.v27
  Platform.mac_10_6.chrome.v28
  Platform.mac_10_6.chrome.v31
  Platform.mac_10_6.chrome.v32
  Platform.mac_10_6.chrome.v33
  Platform.mac_10_6.chrome.v34
  Platform.mac_10_6.chrome.v35
  Platform.mac_10_6.chrome.v36
  Platform.mac_10_6.chrome.v37
  Platform.mac_10_6.chrome.v38
  Platform.mac_10_6.chrome.v39
  Platform.mac_10_6.chrome.v40
  Platform.mac_10_6.chrome.v41
  Platform.mac_10_6.chrome.v42
  Platform.mac_10_6.chrome.beta
  Platform.mac_10_6.chrome.dev

mac_10_9
  Platform.mac_10_9.ipad.v7_0
  Platform.mac_10_9.ipad.v7_1
  Platform.mac_10_9.firefox.v4
  Platform.mac_10_9.firefox.v5
  Platform.mac_10_9.firefox.v6
  Platform.mac_10_9.firefox.v7
  Platform.mac_10_9.firefox.v8
  Platform.mac_10_9.firefox.v9
  Platform.mac_10_9.firefox.v10
  Platform.mac_10_9.firefox.v11
  Platform.mac_10_9.firefox.v12
  Platform.mac_10_9.firefox.v13
  Platform.mac_10_9.firefox.v14
  Platform.mac_10_9.firefox.v15
  Platform.mac_10_9.firefox.v16
  Platform.mac_10_9.firefox.v17
  Platform.mac_10_9.firefox.v18
  Platform.mac_10_9.firefox.v19
  Platform.mac_10_9.firefox.v20
  Platform.mac_10_9.firefox.v21
  Platform.mac_10_9.firefox.v22
  Platform.mac_10_9.firefox.v23
  Platform.mac_10_9.firefox.v24
  Platform.mac_10_9.firefox.v25
  Platform.mac_10_9.firefox.v26
  Platform.mac_10_9.firefox.v27
  Platform.mac_10_9.firefox.v28
  Platform.mac_10_9.firefox.v29
  Platform.mac_10_9.firefox.v30
  Platform.mac_10_9.firefox.v31
  Platform.mac_10_9.firefox.v32
  Platform.mac_10_9.firefox.v33
  Platform.mac_10_9.firefox.v34
  Platform.mac_10_9.firefox.v35
  Platform.mac_10_9.firefox.v36
  Platform.mac_10_9.firefox.v37
  Platform.mac_10_9.firefox.beta
  Platform.mac_10_9.firefox.dev
  Platform.mac_10_9.iphone.v7_0
  Platform.mac_10_9.iphone.v7_1
  Platform.mac_10_9.safari.v7
  Platform.mac_10_9.chrome.v31
  Platform.mac_10_9.chrome.v32
  Platform.mac_10_9.chrome.v33
  Platform.mac_10_9.chrome.v34
  Platform.mac_10_9.chrome.v35
  Platform.mac_10_9.chrome.v36
  Platform.mac_10_9.chrome.v37
  Platform.mac_10_9.chrome.v38
  Platform.mac_10_9.chrome.v39
  Platform.mac_10_9.chrome.v40
  Platform.mac_10_9.chrome.v41
  Platform.mac_10_9.chrome.v42
  Platform.mac_10_9.chrome.beta
  Platform.mac_10_9.chrome.dev

windows_2003
  Platform.windows_2003.opera.v11
  Platform.windows_2003.opera.v12
  Platform.windows_2003.internet_explorer.v8
  Platform.windows_2003.internet_explorer.v6
  Platform.windows_2003.internet_explorer.v7
  Platform.windows_2003.firefox.v3_0
  Platform.windows_2003.firefox.v3_5
  Platform.windows_2003.firefox.v3_6
  Platform.windows_2003.firefox.v4
  Platform.windows_2003.firefox.v5
  Platform.windows_2003.firefox.v6
  Platform.windows_2003.firefox.v7
  Platform.windows_2003.firefox.v8
  Platform.windows_2003.firefox.v9
  Platform.windows_2003.firefox.v10
  Platform.windows_2003.firefox.v11
  Platform.windows_2003.firefox.v12
  Platform.windows_2003.firefox.v13
  Platform.windows_2003.firefox.v14
  Platform.windows_2003.firefox.v15
  Platform.windows_2003.firefox.v16
  Platform.windows_2003.firefox.v17
  Platform.windows_2003.firefox.v18
  Platform.windows_2003.firefox.v19
  Platform.windows_2003.firefox.v20
  Platform.windows_2003.firefox.v21
  Platform.windows_2003.firefox.v22
  Platform.windows_2003.firefox.v23
  Platform.windows_2003.firefox.v24
  Platform.windows_2003.firefox.v25
  Platform.windows_2003.firefox.v26
  Platform.windows_2003.firefox.v27
  Platform.windows_2003.firefox.v28
  Platform.windows_2003.firefox.v29
  Platform.windows_2003.firefox.v30
  Platform.windows_2003.firefox.v31
  Platform.windows_2003.firefox.v32
  Platform.windows_2003.firefox.v33
  Platform.windows_2003.firefox.v34
  Platform.windows_2003.firefox.v35
  Platform.windows_2003.firefox.v36
  Platform.windows_2003.firefox.v37
  Platform.windows_2003.firefox.beta
  Platform.windows_2003.firefox.dev
  Platform.windows_2003.chrome.v26
  Platform.windows_2003.chrome.v27
  Platform.windows_2003.chrome.v28
  Platform.windows_2003.chrome.v29
  Platform.windows_2003.chrome.v30
  Platform.windows_2003.chrome.v31
  Platform.windows_2003.chrome.v32
  Platform.windows_2003.chrome.v33
  Platform.windows_2003.chrome.v34
  Platform.windows_2003.chrome.v35
  Platform.windows_2003.chrome.v36
  Platform.windows_2003.chrome.v37
  Platform.windows_2003.chrome.v38
  Platform.windows_2003.chrome.v39
  Platform.windows_2003.chrome.v40
  Platform.windows_2003.chrome.v41
  Platform.windows_2003.chrome.v42
  Platform.windows_2003.chrome.beta
  Platform.windows_2003.chrome.dev

mac_10_8
  Platform.mac_10_8.ipad.v5_1
  Platform.mac_10_8.ipad.v6_0
  Platform.mac_10_8.ipad.v6_1
  Platform.mac_10_8.iphone.v5_1
  Platform.mac_10_8.iphone.v6_0
  Platform.mac_10_8.iphone.v6_1
  Platform.mac_10_8.safari.v6
  Platform.mac_10_8.chrome.v27
  Platform.mac_10_8.chrome.v28
  Platform.mac_10_8.chrome.v31
  Platform.mac_10_8.chrome.v32
  Platform.mac_10_8.chrome.v33
  Platform.mac_10_8.chrome.v34
  Platform.mac_10_8.chrome.v35
  Platform.mac_10_8.chrome.v36
  Platform.mac_10_8.chrome.v37
  Platform.mac_10_8.chrome.v38
  Platform.mac_10_8.chrome.v39
  Platform.mac_10_8.chrome.v40
  Platform.mac_10_8.chrome.v41
  Platform.mac_10_8.chrome.v42
  Platform.mac_10_8.chrome.beta
  Platform.mac_10_8.chrome.dev

windows_2012
  Platform.windows_2012.internet_explorer.v10
  Platform.windows_2012.firefox.v3_0
  Platform.windows_2012.firefox.v3_5
  Platform.windows_2012.firefox.v3_6
  Platform.windows_2012.firefox.v4
  Platform.windows_2012.firefox.v5
  Platform.windows_2012.firefox.v6
  Platform.windows_2012.firefox.v7
  Platform.windows_2012.firefox.v8
  Platform.windows_2012.firefox.v9
  Platform.windows_2012.firefox.v10
  Platform.windows_2012.firefox.v11
  Platform.windows_2012.firefox.v12
  Platform.windows_2012.firefox.v13
  Platform.windows_2012.firefox.v14
  Platform.windows_2012.firefox.v15
  Platform.windows_2012.firefox.v16
  Platform.windows_2012.firefox.v17
  Platform.windows_2012.firefox.v18
  Platform.windows_2012.firefox.v19
  Platform.windows_2012.firefox.v20
  Platform.windows_2012.firefox.v21
  Platform.windows_2012.firefox.v22
  Platform.windows_2012.firefox.v23
  Platform.windows_2012.firefox.v24
  Platform.windows_2012.firefox.v25
  Platform.windows_2012.firefox.v26
  Platform.windows_2012.firefox.v27
  Platform.windows_2012.firefox.v28
  Platform.windows_2012.firefox.v29
  Platform.windows_2012.firefox.v30
  Platform.windows_2012.firefox.v31
  Platform.windows_2012.firefox.v32
  Platform.windows_2012.firefox.v33
  Platform.windows_2012.firefox.v34
  Platform.windows_2012.firefox.v35
  Platform.windows_2012.firefox.v36
  Platform.windows_2012.firefox.v37
  Platform.windows_2012.firefox.beta
  Platform.windows_2012.firefox.dev
  Platform.windows_2012.chrome.v26
  Platform.windows_2012.chrome.v27
  Platform.windows_2012.chrome.v28
  Platform.windows_2012.chrome.v29
  Platform.windows_2012.chrome.v30
  Platform.windows_2012.chrome.v31
  Platform.windows_2012.chrome.v32
  Platform.windows_2012.chrome.v33
  Platform.windows_2012.chrome.v34
  Platform.windows_2012.chrome.v35
  Platform.windows_2012.chrome.v36
  Platform.windows_2012.chrome.v37
  Platform.windows_2012.chrome.v38
  Platform.windows_2012.chrome.v39
  Platform.windows_2012.chrome.v40
  Platform.windows_2012.chrome.v41
  Platform.windows_2012.chrome.v42
  Platform.windows_2012.chrome.beta
  Platform.windows_2012.chrome.dev

linux
  Platform.linux.opera.v12
  Platform.linux.lynx.v2_8_7
  Platform.linux.firefox.v3_6
  Platform.linux.firefox.v4
  Platform.linux.firefox.v5
  Platform.linux.firefox.v6
  Platform.linux.firefox.v7
  Platform.linux.firefox.v8
  Platform.linux.firefox.v9
  Platform.linux.firefox.v10
  Platform.linux.firefox.v11
  Platform.linux.firefox.v12
  Platform.linux.firefox.v13
  Platform.linux.firefox.v14
  Platform.linux.firefox.v15
  Platform.linux.firefox.v16
  Platform.linux.firefox.v17
  Platform.linux.firefox.v18
  Platform.linux.firefox.v19
  Platform.linux.firefox.v20
  Platform.linux.firefox.v21
  Platform.linux.firefox.v22
  Platform.linux.firefox.v23
  Platform.linux.firefox.v24
  Platform.linux.firefox.v25
  Platform.linux.firefox.v26
  Platform.linux.firefox.v27
  Platform.linux.firefox.v28
  Platform.linux.firefox.v29
  Platform.linux.firefox.v30
  Platform.linux.firefox.v31
  Platform.linux.firefox.v32
  Platform.linux.firefox.v33
  Platform.linux.firefox.v34
  Platform.linux.firefox.v35
  Platform.linux.firefox.v36
  Platform.linux.firefox.v37
  Platform.linux.firefox.beta
  Platform.linux.firefox.dev
  Platform.linux.chrome.v26
  Platform.linux.chrome.v27
  Platform.linux.chrome.v28
  Platform.linux.chrome.v29
  Platform.linux.chrome.v30
  Platform.linux.chrome.v31
  Platform.linux.chrome.v32
  Platform.linux.chrome.v33
  Platform.linux.chrome.v34
  Platform.linux.chrome.v35
  Platform.linux.chrome.v36
  Platform.linux.chrome.v37
  Platform.linux.chrome.v38
  Platform.linux.chrome.v39
  Platform.linux.chrome.v40
  Platform.linux.chrome.v41
  Platform.linux.chrome.v42
  Platform.linux.chrome.beta
  Platform.linux.chrome.dev
  Platform.linux.android.v4_0
  Platform.linux.android.v4_1
  Platform.linux.android.v4_2
  Platform.linux.android.v4_3
  Platform.linux.android.v4_4
  Platform.linux.android.v5_0
  Platform.linux.android.v5_1

windows_2012_r2
  Platform.windows_2012_r2.internet_explorer.v11
  Platform.windows_2012_r2.firefox.v3_0
  Platform.windows_2012_r2.firefox.v3_5
  Platform.windows_2012_r2.firefox.v3_6
  Platform.windows_2012_r2.firefox.v4
  Platform.windows_2012_r2.firefox.v5
  Platform.windows_2012_r2.firefox.v6
  Platform.windows_2012_r2.firefox.v7
  Platform.windows_2012_r2.firefox.v8
  Platform.windows_2012_r2.firefox.v9
  Platform.windows_2012_r2.firefox.v10
  Platform.windows_2012_r2.firefox.v11
  Platform.windows_2012_r2.firefox.v12
  Platform.windows_2012_r2.firefox.v13
  Platform.windows_2012_r2.firefox.v14
  Platform.windows_2012_r2.firefox.v15
  Platform.windows_2012_r2.firefox.v16
  Platform.windows_2012_r2.firefox.v17
  Platform.windows_2012_r2.firefox.v18
  Platform.windows_2012_r2.firefox.v19
  Platform.windows_2012_r2.firefox.v20
  Platform.windows_2012_r2.firefox.v21
  Platform.windows_2012_r2.firefox.v22
  Platform.windows_2012_r2.firefox.v23
  Platform.windows_2012_r2.firefox.v24
  Platform.windows_2012_r2.firefox.v25
  Platform.windows_2012_r2.firefox.v26
  Platform.windows_2012_r2.firefox.v27
  Platform.windows_2012_r2.firefox.v28
  Platform.windows_2012_r2.firefox.v29
  Platform.windows_2012_r2.firefox.v30
  Platform.windows_2012_r2.firefox.v31
  Platform.windows_2012_r2.firefox.v32
  Platform.windows_2012_r2.firefox.v33
  Platform.windows_2012_r2.firefox.v34
  Platform.windows_2012_r2.firefox.v35
  Platform.windows_2012_r2.firefox.v36
  Platform.windows_2012_r2.firefox.v37
  Platform.windows_2012_r2.firefox.beta
  Platform.windows_2012_r2.firefox.dev
  Platform.windows_2012_r2.chrome.v26
  Platform.windows_2012_r2.chrome.v27
  Platform.windows_2012_r2.chrome.v28
  Platform.windows_2012_r2.chrome.v29
  Platform.windows_2012_r2.chrome.v30
  Platform.windows_2012_r2.chrome.v31
  Platform.windows_2012_r2.chrome.v32
  Platform.windows_2012_r2.chrome.v33
  Platform.windows_2012_r2.chrome.v34
  Platform.windows_2012_r2.chrome.v35
  Platform.windows_2012_r2.chrome.v36
  Platform.windows_2012_r2.chrome.v37
  Platform.windows_2012_r2.chrome.v38
  Platform.windows_2012_r2.chrome.v39
  Platform.windows_2012_r2.chrome.v40
  Platform.windows_2012_r2.chrome.v41
  Platform.windows_2012_r2.chrome.v42
  Platform.windows_2012_r2.chrome.beta
  Platform.windows_2012_r2.chrome.dev

windows_2008
  Platform.windows_2008.internet_explorer.v8
  Platform.windows_2008.internet_explorer.v9
  Platform.windows_2008.internet_explorer.v10
  Platform.windows_2008.internet_explorer.v11
  Platform.windows_2008.opera.v11
  Platform.windows_2008.opera.v12
  Platform.windows_2008.firefox.v3_0
  Platform.windows_2008.firefox.v3_5
  Platform.windows_2008.firefox.v3_6
  Platform.windows_2008.firefox.v4
  Platform.windows_2008.firefox.v5
  Platform.windows_2008.firefox.v6
  Platform.windows_2008.firefox.v7
  Platform.windows_2008.firefox.v8
  Platform.windows_2008.firefox.v9
  Platform.windows_2008.firefox.v10
  Platform.windows_2008.firefox.v11
  Platform.windows_2008.firefox.v12
  Platform.windows_2008.firefox.v13
  Platform.windows_2008.firefox.v14
  Platform.windows_2008.firefox.v15
  Platform.windows_2008.firefox.v16
  Platform.windows_2008.firefox.v17
  Platform.windows_2008.firefox.v18
  Platform.windows_2008.firefox.v19
  Platform.windows_2008.firefox.v20
  Platform.windows_2008.firefox.v21
  Platform.windows_2008.firefox.v22
  Platform.windows_2008.firefox.v23
  Platform.windows_2008.firefox.v24
  Platform.windows_2008.firefox.v25
  Platform.windows_2008.firefox.v26
  Platform.windows_2008.firefox.v27
  Platform.windows_2008.firefox.v28
  Platform.windows_2008.firefox.v29
  Platform.windows_2008.firefox.v30
  Platform.windows_2008.firefox.v31
  Platform.windows_2008.firefox.v32
  Platform.windows_2008.firefox.v33
  Platform.windows_2008.firefox.v34
  Platform.windows_2008.firefox.v35
  Platform.windows_2008.firefox.v36
  Platform.windows_2008.firefox.v37
  Platform.windows_2008.firefox.beta
  Platform.windows_2008.firefox.dev
  Platform.windows_2008.safari.v5
  Platform.windows_2008.chrome.v26
  Platform.windows_2008.chrome.v27
  Platform.windows_2008.chrome.v28
  Platform.windows_2008.chrome.v29
  Platform.windows_2008.chrome.v30
  Platform.windows_2008.chrome.v31
  Platform.windows_2008.chrome.v32
  Platform.windows_2008.chrome.v33
  Platform.windows_2008.chrome.v34
  Platform.windows_2008.chrome.v35
  Platform.windows_2008.chrome.v36
  Platform.windows_2008.chrome.v37
  Platform.windows_2008.chrome.v38
  Platform.windows_2008.chrome.v39
  Platform.windows_2008.chrome.v40
  Platform.windows_2008.chrome.v41
  Platform.windows_2008.chrome.v42
  Platform.windows_2008.chrome.beta
  Platform.windows_2008.chrome.dev

mac_10_10
  Platform.mac_10_10.ipad.v7_1
  Platform.mac_10_10.ipad.v8_0
  Platform.mac_10_10.ipad.v8_1
  Platform.mac_10_10.ipad.v8_2
  Platform.mac_10_10.firefox.v32
  Platform.mac_10_10.firefox.v33
  Platform.mac_10_10.firefox.v34
  Platform.mac_10_10.firefox.v35
  Platform.mac_10_10.firefox.v36
  Platform.mac_10_10.firefox.v37
  Platform.mac_10_10.firefox.beta
  Platform.mac_10_10.firefox.dev
  Platform.mac_10_10.iphone.v7_1
  Platform.mac_10_10.iphone.v8_0
  Platform.mac_10_10.iphone.v8_1
  Platform.mac_10_10.iphone.v8_2
  Platform.mac_10_10.safari.v8
  Platform.mac_10_10.chrome.v37
  Platform.mac_10_10.chrome.v38
  Platform.mac_10_10.chrome.v39
  Platform.mac_10_10.chrome.v40
  Platform.mac_10_10.chrome.v41
  Platform.mac_10_10.chrome.v42
  Platform.mac_10_10.chrome.beta
  Platform.mac_10_10.chrome.dev

Finished in 0.09344 seconds (files took 0.25787 seconds to load)
471 examples, 0 failures
```
