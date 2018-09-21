# Liferay Theme Documentation 7.1 Styled Theme

This directory contains every file used in the Styled Theme with some documentation at the top of each file.

## Files that Matter for Your Theme

`main.scss` your `_custom.scss` is imported in here. This is the external stylesheet that loads your theme in the browser's `<head>` tag.

`_imports.scss` contains Bourbon mixins, Frontend CSS Common mixins, Lexicon CSS + Bootstrap 3 mixins, Bootstrap 4 + Clay CSS Base variables, and Clay CSS + Bootstrap 4 mixins. If you want to import Clay CSS Atlas, change that in here. It is imported in `main.scss`.

`_custom.scss` is the file that should contain your theme's CSS. Import your mixins and Sass partials at the top of `_custom.scss`. It is imported in `main.scss`

`clay.scss` imports Clay CSS. Choose whether to import Clay CSS Base (Styled) or Clay CSS Atlas (Classic) in this file. This is the external stylesheet that loads Clay CSS in the browser's `<head>` tag.

`_clay_variables.scss` is the file that should contain Clay CSS + Bootstrap 4 variable overwrites. You can add your custom variables (not related to Clay CSS) and Liferay Theme variable overwrites in this file or create a separate file and import at the top of `_imports.scss`. It is imported in `clay.scss` and `main.scss`.

## Removing the Compatibility Layer

> Removing the compatibility layer will cause some out of the box components to lose their styles. We haven't fully converted every out of the box component to Clay CSS + Bootstrap 4 markup.

In your theme, create a duplicate of:

`src/css/clay/_variables.scss` and comment out the line `@import "../compat/variables";`.

`src/css/clay/_components.scss` and comment out the line `@import "../compat/components";`.

`src/css/_imports.scss` and comment out the line `@import "compat/mixins";`.

## Removing Font Awesome

> Removing Font Awesome will cause some icons in out of the box components to disappear.

In your theme, create a duplicate of:

`src/css/font_awesome.scss` and comment out everything in that file.

`src/css/compat/_components.scss` and comment out the line `@import "third_party/font_awesome_alloy";`

## Removing Glyphicons

In your theme (if you haven't already), create a duplicate of:

`src/css/compat/_components.scss` and comment out the line `@import "third_party/font_glyphicons";`