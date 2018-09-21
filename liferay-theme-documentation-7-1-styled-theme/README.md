# Liferay Theme Documentation 7.1 Styled Theme

This directory contains every file used in the Styled Theme with some documentation at the top of each file.

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