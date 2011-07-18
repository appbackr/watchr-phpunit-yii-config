Using the watchr gem with PHPUnit on the Yii framework
======================================================

What does it do?
----------------

Watchr is a Rubygem to monitor file changes. It can run your unit tests (or pretty much anything else you want) on the changed files.

This script is set up to perform the entire test suite in the 'unit/' folder of the Yii PHP framework every time a .php file in the 
Yii folder has changed. It uses growl notifications (growlnotify) to display a green OK or a red X to signal if the tests succeeded
or failed.

Growl might be Mac OS X only. There might be similar notification service apps on other platforms.


Requirements
------------

- watchr gem (gem install watchr)
- Yii (http://www.yiiframework.com/)
- PHPUnit (https://github.com/sebastianbergmann/phpunit/)
- growlnotify (http://growl.info/, included in 'Extras' folder in download)


Installation
------------

1. Install all the requirements
2. Copy the watchr.rb script in the root of your Yii application (the one with the subfolders <appname> and framework).
3. Copy the .watchr_images folder into your home folder.
4. Run 'watchr watchr.rb' in the root of your Yii application.


Todo
----

For big test suites, it would be nice to only perform tests on the files that have actually changed. In my project, this is currently
not an issue, as the entire test suite runs in a few seconds. If anyone wants to implement that, I'd be interested.
